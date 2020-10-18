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

import 'package:http/http.dart';

/// BoondApi Exception thrown on error.
class BoondApiError extends Error {
  static int PARSE_ERROR = -1;

  /// Standard Boond HTTP status codes.
  static int STATUS_OK = 200;
  static int STATUS_DENIED = 401;
  static int STATUS_NO_ACCESS = 403;
  static int STATUS_NOT_FOUND = 404;
  static int STATUS_JSON_ERROR = 422;
  static int STATUS_INTERNAL = 500;
  static int STATUS_MAINTENANCE = 503;

  /// status received in the HTTP query.
  int statusCode;

  /// a human readable message for the exception.
  String reasonPhrase;

  /// some errors returns a json detailed message in the response body.
  String body;

  @override
  String toString() {
    return 'BoondApiError [$statusCode] : $reasonPhrase \n$body';
  }

  /// basic constructor. To be used with a http.Response object.
  BoondApiError(this.statusCode, this.reasonPhrase, [this.body]);

  /// true means this is not an error.
  bool get isOk => (statusCode == STATUS_OK);

  /// factory for a http.Response entry.
  static BoondApiError fromResponse(Response r) {
    return BoondApiError(r.statusCode, r.reasonPhrase, r.body);
  }
}
