/*
 * Copyright (c) patrouil (2020).This work is licensed under the
 * Creative Commons Attribution-ShareAlike 4.0 International License.
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/4.0/.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 *
 */

import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';
import 'dart:convert';

import 'package:jaguar_jwt/jaguar_jwt.dart';
import 'package:http_auth/http_auth.dart';
import 'package:logging/logging.dart';

/// {@category Authentication}
/// Boond Auth services.
class BoondAuth {
  static final log = Logger('BoondAuth');

  /// Basic authentication based on [user] and [password].
  /// [traceLevel] used to enable the API debugging.
  static http.Client basicAuth({user, password, Level? traceLevel}) {
    return _BoondBasicAuthClient(
        user: user, password: password, traceLevel: traceLevel);
  }

  /// ClientTokenAuth authentication. [clientToken] and [userToken] are provided by the Workspace administrator.
  /// [clientKey] by end user. This client key can be found with the application/current-user service.
  static http.Client clientTokenAuth(
      {required String clientToken,
      required String userToken,
      required String clientKey,
      String mode = "normal",
      Level? traceLevel}) {
    return _BoondClientTokenAuthClient(
        clientToken: clientToken,
        userToken: userToken,
        clientKey: clientKey,
        mode: mode,
        traceLevel: traceLevel);
  }
}

///
/// To test your client key see : https://jwt.io/
///
class _BoondBasicAuthClient extends BasicAuthClient {
  _BoondBasicAuthClient(
      {required String user, required String password, Level? traceLevel})
      : super(user, password) {
    if (traceLevel != null) BoondAuth.log.level = traceLevel;
  }

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (BoondAuth.log.level.value <= Level.FINE.value) {
      //request.headers['x-debug-boondmanager'] = 'true';
      BoondAuth.log.log(BoondAuth.log.level, request.url);
    }
    return super.send(request);
  }
}

class _BoondClientTokenAuthClient extends http.BaseClient {
  final http.Client _inner = http.Client();

  late String _jwtToken;

  _BoondClientTokenAuthClient(
      {required String clientToken,
      required String userToken,
      required String clientKey,
      required String mode,
      Level? traceLevel})
      : super() {
    if (traceLevel != null) BoondAuth.log.level = traceLevel;
    _jwtToken = _buildJwtToken(clientToken, userToken, mode, clientKey);
  }

  String _buildJwtToken(
      String clientToken, String userToken, String mode, String clientKey) {
    assert((mode == "normal" || mode == "god"));
    BoondAuth.log.log(Level.FINE,
        "[_buildJwtToken] token for $userToken - $clientToken - $mode");

    int t = DateTime.now().millisecondsSinceEpoch;
    Map<String, String> payload = {
      "userToken": userToken,
      "clientToken": clientToken,
      "time": "$t",
      "mode": mode
    };

    // JwtClaim claim = JwtClaim(payload: payload);
    BoondAuth.log.log(
        Level.FINE, "[_buildJwtToken] claim >>>>{$payload.toString()}<<<<");
    String s = _issueJwtHS256(payload, clientKey);

    BoondAuth.log.fine("[_buildJwtToken] token for >>>$s<<< ");
    return s;
  }

  // copied from jaguar_jwt.dart but restricted to the payload section.
  String _issueJwtHS256(Map<String, dynamic> payload, String hmacKey) {
    final hmac = Hmac(sha256, hmacKey.codeUnits);

    const Map<String, String> header = {'alg': 'HS256', 'typ': 'JWT'};

    final String encHdr = B64urlEncRfc7515.encodeUtf8(json.encode(header));
    final String encPld = B64urlEncRfc7515.encodeUtf8(json.encode(payload));
    final String data = "$encHdr.$encPld";
    final String encSig =
        B64urlEncRfc7515.encode(hmac.convert(data.codeUnits).bytes);
    return data + '.' + encSig;
  }

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    request.headers['X-Jwt-Client-Boondmanager'] = _jwtToken;

    if (BoondAuth.log.level.value <= Level.FINE.value) {
      //request.headers['X-Debug-Boondmanager'] = 'true';
      BoondAuth.log.log(Level.FINE, request.url);
    }
    return _inner.send(request);
  }

  @override
  void close() {
    _inner.close();
  }
}
