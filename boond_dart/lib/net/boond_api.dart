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

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
// import 'package:logging/logging.dart';
import '../entities/documents_body.dart';
import '../entities/application_dictionary.dart';
import '../entities/actions_entity.dart';
import '../entities/candidate_body.dart';
import '../entities/application_currentuser.dart';
import '../entities/opportunity_entity.dart';
import '../entities/companies_entity.dart';
import '../entities/contacts_entity.dart';

import 'boond_api_error.dart';
import 'boond_auth.dart';

part 'candidate_api.dart';
part 'app_currentuser_api.dart';
part 'app_dictionary_api.dart';
part 'actions_api.dart';
part 'documents_api.dart';
part 'opportunities_api.dart';
part 'companies_api.dart';
part 'contacts_api.dart';

///  Main APi entry point. Any exchanges with a Boond Worspace is done with this instance.
class BoondApi {
  // const attributes.
  static const kScheme = "https";

  /// there a two categories of workspaces.
  /// sandbox for tests purpose.
  static const kSandboxHostname = "sandboxui.boondmanager.com";

  /// ui for production site.
  static const kLiveHostname = "ui.boondmanager.com";

  /// The http client MUST be obtained with a [BoondAuth]
  final http.Client httpClient;

  /// selected hostname either sandbox or ui.
  final String hostName;

  /// candidate services accessor.
  CandidateApi get candidate => CandidateApi(this);

  /// application/current-user services accessor.
  AppCurrentUserApi get currentuser => AppCurrentUserApi(this);

  /// application/dictionnary services accessor.
  AppDictionaryApi get dictionnary => AppDictionaryApi(this);

  // actions services accessor.
  ActionsApi get actions => ActionsApi(this);

  // document services accessor.
  DocumentsApi get documents => DocumentsApi(this);

  // document services accessor.
  OpportunitiesApi get opportinities => OpportunitiesApi(this);

  // companies services accessor.
  CompaniesApi get companies => CompaniesApi(this);

  // contacts services accessor.
  ContactsApi get contacts => ContactsApi(this);

  /// API handled constructor. [httpClient] is returned by a BoondAuth athentication method.
  /// [hostName] is a sandbox or ui.
  /// To change trace level : BoondAuth.log.level = Level.FINEST;
  const BoondApi(this.httpClient, this.hostName)
      : assert(hostName == kSandboxHostname || hostName == kLiveHostname);
}

/// @nodocs
/// generic request services.
class _EntityApi {
  final BoondApi _parent;

  const _EntityApi(this._parent);

  /// decodes Boond service responses.
  /// is not STATUS_OK an Exception is thrown.
  /// the default content type is text/json
  /// but others type could be selected.
  bool checkResponse({required http.Response response, String? expectedType}) {
    if (expectedType == null) expectedType = ContentType.json.mimeType;

    if (response.statusCode == BoondApiError.STATUS_OK &&
        response.headers.isNotEmpty) {
      //
      String? content = response.headers[HttpHeaders.contentTypeHeader];
      if ((content == null) || (content != expectedType)) {
        throw BoondApiError(
            BoondApiError.STATUS_NOT_FOUND, "invalid content type $content");
      } else {
        return true;
      }
    }
    throw BoondApiError.fromResponse(response);
  }

  /// helper to send GET HTTP request.
  Future<dynamic> getHelper(
      Uri u, dynamic Function(Map<String, dynamic>) bodyResponseMapper) async {
    http.Response? r;
    try {
      r = await _parent.httpClient.get(u);
      if (checkResponse(response: r)) {
        //BoondAuth.log.finest("[getHelper] body is ${r.body}");
        Map<String, dynamic> obj = jsonDecode(r.body);
        return bodyResponseMapper(obj);
      }
      // otherwise an Exception is thrown
    } catch (e) {
      BoondAuth.log.shout("[getHelper] uri was ${u.toString()}");
      BoondAuth.log.shout("[getHelper] response was ${r?.body}");
      BoondAuth.log.shout(
          "[getHelper] error ${e.runtimeType.toString()}:${e.toString()}");
      rethrow;
    }
  }

  /// helper to send GET HTTP request.
  Future<Uint8List> getBinaryHelper(Uri u) async {
    http.Response? r;
    try {
      r = await _parent.httpClient.get(u);
      if (checkResponse(
          response: r, expectedType: ContentType.binary.mimeType)) {
        //BoondAuth.log.finest("[getHelper] body is ${r.body}");
        return r.bodyBytes;
      }
      throw BoondApiError(r.statusCode, r.reasonPhrase);
    } catch (e) {
      BoondAuth.log.shout("[getHelper] uri was ${u.toString()}");
      BoondAuth.log.shout("[getHelper] response was ${r?.body}");
      BoondAuth.log.shout(
          "[getHelper] error ${e.runtimeType.toString()}:${e.toString()}");
      rethrow;
    }
  }

  /// helpr to send PUT HTTP requests.
  Future<dynamic> putHelper(Uri uri, Map<String, dynamic> _body,
      dynamic Function(Map<String, dynamic>) bodyResponseMapper) async {
    final Map<String, String> _header = {
      HttpHeaders.contentTypeHeader: ContentType.json.mimeType
    };
    //BoondAuth.log.level = Level.FINEST;
    http.Response r;
    try {
      String _bodyString = json.encode(_body);
      BoondAuth.log.fine("[putHelper] uri ${uri.toString()}");
      BoondAuth.log.fine("[putHelper] _body $_bodyString");

      r = await _parent.httpClient
          .put(uri, headers: _header, body: _bodyString);
      if (checkResponse(response: r)) {
        Map<String, dynamic> obj = jsonDecode(r.body);
        return bodyResponseMapper(obj);
      }
      // otherwise an Exception is thrown
    } catch (e) {
      BoondAuth.log.shout(
          "[putHelper] error ${e.runtimeType.toString()}:${e.toString()}");
      rethrow;
    }
  }

  /// helper used to send a POST HTTP requests.
  Future<dynamic> postHelper(Uri uri, Map<String, dynamic> _body,
      dynamic Function(Map<String, dynamic>) bodyResponseMapper) async {
    try {
      final Map<String, String> _header = {
        HttpHeaders.contentTypeHeader: ContentType.json.mimeType
      };
      String _bodyString = json.encode(_body);

      BoondAuth.log.fine("[postHelper] uri ${uri.toString()}");
      BoondAuth.log.fine("[postHelper] _body $_bodyString");

      http.Response r = await _parent.httpClient
          .post(uri, headers: _header, body: _bodyString);
      if (checkResponse(response: r)) {
        Map<String, dynamic> obj = jsonDecode(r.body);
        BoondAuth.log.fine("[postHelper] do response  $obj");

        return bodyResponseMapper(obj);
      }
      // otherwise an Exception is thrown
    } catch (e) {
      BoondAuth.log.shout(
          "[postHelper] error ${e.runtimeType.toString()}:${e.toString()}");
      rethrow;
    }
  }

  /// helper used to POST a FORM HTTP requests.
  /// used for documents and other file transfer.
  Future<dynamic> postFormHelper(
      Uri uri,
      Map<String, String> fields,
      List<http.MultipartFile> files,
      dynamic Function(Map<String, dynamic>) bodyResponseMapper) async {
    try {
      http.MultipartRequest request = http.MultipartRequest("POST", uri)
        ..files.addAll(files)
        ..fields.addAll(fields);

      Uint8List bodyBytes = await request.finalize().toBytes();

      http.Response r = await _parent.httpClient
          .post(uri, headers: request.headers, body: bodyBytes);

      if (checkResponse(response: r)) {
        Map<String, dynamic> obj = jsonDecode(r.body);
        BoondAuth.log.fine("[postFormHelper] do response  $obj");

        return bodyResponseMapper(obj);
      }
      // otherwise an Exception is thrown
    } catch (e) {
      BoondAuth.log.shout(
          "[postFormHelper] error ${e.runtimeType.toString()}:${e.toString()}");
      rethrow;
    }
  }
} // class
