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

import 'package:logging/logging.dart';

import '../entities/documents-body.dart';
import '../entities/application-dictionnary.dart';
import '../entities/candidate-body.dart';
import '../entities/actions-entity.dart';
import '../entities/application-currentuser.dart';

import 'BoondApiError.dart';
import 'BoondAuth.dart';

///  Main APi entry point. Any exchanges with a Boond Worspace is done with this instance.
class BoondApi {
  // const attributes.
  static const SCHEME = "https";

  /// there a two categories of workspaces.
  /// sandbox for tests purpose.
  static const SANDBOX_HOSTNAME = "sandboxui.boondmanager.com";

  /// ui for production site.
  static const LIVE_HOSTNAME = "ui.boondmanager.com";

  /// The http client MUST be obtained with a [BoondAuth]
  final http.Client httpClient;

  /// selected hostname either sandbox or ui.
  final String hostName;

  /// candidate services accessor.
  CandidateApi get candidate => CandidateApi(this);

  /// application/current-user services accessor.
  AppCurrentUserApi get currentuser => AppCurrentUserApi(this);

  /// application/dictionnary services accessor.
  AppDictionaryApi get app_dict => AppDictionaryApi(this);

  // actions services accessor.
  ActionsApi get actions => ActionsApi(this);

  // document services accessor.
  DocumentsApi get documents => DocumentsApi(this);

  /// API handled constructor. [httpClient] is returned by a BoondAuth athentication method.
  /// [hostName] is a sandbox or ui.
  BoondApi(this.httpClient, this.hostName)
      : assert(hostName == SANDBOX_HOSTNAME || hostName == LIVE_HOSTNAME) {
    BoondAuth.log.level = Level.FINEST;
  }
}

/// @nodocs
/// generic request services.
class _EntityApi {
  BoondApi _parent;

  _EntityApi(this._parent);

  /// decodes Boond service responses.
  /// is not STATUS_OK an Exception is thrown.
  bool checkResponse(http.Response r) {
    if (r.statusCode == BoondApiError.STATUS_OK && r.headers != null) {
      String content = r.headers[HttpHeaders.contentTypeHeader];
      if ((content == null) || (content != ContentType.json.mimeType))
        throw BoondApiError(
            BoondApiError.STATUS_NOT_FOUND, "invalid content type $content");
      else
        return true;
    }
    throw BoondApiError.fromResponse(r);
  }

  /// helper to send GET HTTP request.
  Future<dynamic> getHelper(
      Uri u, dynamic Function(Map<String, dynamic>) bodyResponseMapper) async {
    http.Response r;
    try {
      r = await _parent.httpClient.get(u);
      if (checkResponse(r)) {
        //BoondAuth.log.finest("[getHelper] body is ${r.body}");
        Map<String, dynamic> obj = jsonDecode(r.body);
        return bodyResponseMapper(obj);
      }
      // otherwise an Exception is thrown
    } catch (e) {
      BoondAuth.log.shout("[getHelper] uri was ${u.toString()}");
      BoondAuth.log.shout("[getHelper] response was ${r.body}");
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
    BoondAuth.log.level = Level.FINEST;
    http.Response r;
    try {
      String _bodyString = json.encode(_body);
      BoondAuth.log.fine("[putHelper] uri ${uri.toString()}");
      BoondAuth.log.fine("[putHelper] _body ${_bodyString}");

      r = await _parent.httpClient
          .put(uri, headers: _header, body: _bodyString);
      if (checkResponse(r)) {
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
      BoondAuth.log.fine("[postHelper] _body ${_bodyString}");

      http.Response r = await _parent.httpClient
          .post(uri, headers: _header, body: _bodyString);
      if (checkResponse(r)) {
        Map<String, dynamic> obj = jsonDecode(r.body);
        BoondAuth.log.fine("[postHelper] do response  ${obj}");

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
      Map<String, dynamic> fields,
      List<http.MultipartFile> files,
      dynamic Function(Map<String, dynamic>) bodyResponseMapper) async {
    try {
      http.MultipartRequest request = http.MultipartRequest("POST", uri)
        ..files.addAll(files)
        ..fields.addAll(fields);

      Uint8List bodyBytes = await request.finalize().toBytes();

      http.Response r = await _parent.httpClient
          .post(uri, headers: request.headers, body: bodyBytes);

      if (checkResponse(r)) {
        Map<String, dynamic> obj = jsonDecode(r.body);
        BoondAuth.log.fine("[postFormHelper] do response  ${obj}");

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

/// Access to candidate services.
class CandidateApi extends _EntityApi {
  CandidateApi(BoondApi parent) : super(parent);

  /// create/get a new Candidate Template.
  /// the resulting object has no ID.
  Future<CandidateGet> empty() async {
    const String url = "/api/candidates/default";

    Uri uri = Uri(scheme: BoondApi.SCHEME, host: _parent.hostName, path: url);
    return await this
        .getHelper(uri, (Map<String, dynamic> m) => CandidateGet.fromJson(m));
  }

  /// fetch a Candidate URI from his ID.
  /// used to access to BoondManager native application and open this candidate definition.
  Uri getInformationUri(String id) {
    String url = "/candidates/$id/information";

    Uri uri = Uri(scheme: BoondApi.SCHEME, host: _parent.hostName, path: url);
    return uri;
  }

  /// get synthesis data from the Candidate ID.
  Future<CandidateGet> get(String id) async {
    String url = "/api/candidates/$id";

    Uri uri = Uri(scheme: BoondApi.SCHEME, host: _parent.hostName, path: url);
    return await this.getHelper(uri, (Map<String, dynamic> m) {
      BoondAuth.log
          .info("[CandidateGet] level is ${BoondAuth.log.level.toString()}"
              " get $id is binding  ${m.toString()}");
      return CandidateGet.fromJson(m);
    });
  }

  // get detailed information from the Candidate ID..
  Future<CandidateGet> information(String id) async {
    String url = "/api/candidates/$id/information";

    Uri uri = Uri(scheme: BoondApi.SCHEME, host: _parent.hostName, path: url);
    return await this.getHelper(uri, (Map<String, dynamic> m) {
      BoondAuth.log.fine("[information] get $id is binding  ${m.toString()}");
      return CandidateGet.fromJson(m);
    });
  }

  /// lookup some Candidates based on a key : value set of criteria.
  /// Example :
  /// ``
  /// {
  /// "keywordsType" : "emails",
  /// "keywords" : "toto@nowhere.com"
  /// }
  /// ``
  /// will return every Candidate having such an email.
  Future<CandidateSearch> search([Map<String, String> keywords]) async {
    const String url = "/api/candidates";

    Uri uri = Uri(
        scheme: BoondApi.SCHEME,
        host: _parent.hostName,
        path: url,
        queryParameters: keywords);
    BoondAuth.log.fine("[search ${uri.query}]");
    return await this.getHelper(
        uri, (Map<String, dynamic> m) => CandidateSearch.fromJson(m));
  }

  /// Creates a new Candidates.
  /// Use the [empty] method before then the update it's attributes.
  /// for compatibility reason, if an ID exists a [put_information] is done.
  Future<CandidateGet> post(CandidatePost c) async {
    // if Candidate ID is zero. Create a new one.
    String url = (c.data?.id != "0")
        ? "/api/candidates/${c.data.id}/information"
        : "/api/candidates";

    Uri uri = Uri(scheme: BoondApi.SCHEME, host: _parent.hostName, path: url);
    return await this.postHelper(
        uri, c.toJson(), (Map<String, dynamic> m) => CandidateGet.fromJson(m));
  }

  /// update information part of a Candidate;
  Future<CandidateGet> put_information(CandidateGet c) async {
    String url = "/api/candidates/${c.data.id}/information";

    Map<String, dynamic> _valuesToPut = {"data": c.data.toJson()};
    Uri uri = Uri(scheme: BoondApi.SCHEME, host: _parent.hostName, path: url);
    return await this.putHelper(uri, _valuesToPut, (Map<String, dynamic> m) {
      return CandidateGet.fromJson(m);
    });
  }
}

/// Access to application/current-user services.
/// Current User is defined by the authentication credentials.
class AppCurrentUserApi extends _EntityApi {
  AppCurrentUserApi(BoondApi parent) : super(parent);

  /// get Current user detailed information.
  Future<AppCurrentUserGet> get() async {
    const String url = "/api/application/current-user";
    Uri uri = Uri(scheme: BoondApi.SCHEME, host: _parent.hostName, path: url);

    return await this.getHelper(
        uri, (Map<String, dynamic> m) => AppCurrentUserGet.fromJson(m));
  }
}

/// Access to application/dictionary services.
/// useful for graphical applications such as Web pages.
class AppDictionaryApi extends _EntityApi {
  AppDictionaryApi(BoondApi parent) : super(parent);

  // Upload any dictionary data.
  Future<AppDictionnaryGet> get() async {
    const String url = "/api/application/dictionary";
    Uri uri = Uri(scheme: BoondApi.SCHEME, host: _parent.hostName, path: url);

    return await this.getHelper(
        uri, (Map<String, dynamic> m) => AppDictionnaryGet.fromJson(m));
  }
}

/// Access to actions services
class ActionsApi extends _EntityApi {
  ActionsApi(BoondApi parent) : super(parent);

  /// create/get a new actions Template.
  /// the objet type and id to this action is related to must be given.
  /// this ID is zero.
  Future<ActionsGet> empty(String dataType, String dataId) async {
    const String url = "/api/actions/default";

    assert(dataType != null);
    assert(dataId != null);
    Map<String, String> keywords = {"$dataType": "$dataId"};

    Uri uri = Uri(
        scheme: BoondApi.SCHEME,
        host: _parent.hostName,
        path: url,
        queryParameters: keywords);
    return await this
        .getHelper(uri, (Map<String, dynamic> m) => ActionsGet.fromJson(m));
  }

  /// get action synthesis information.
  Future<ActionsGet> get(String id) async {
    String url = "/api/actions/$id";

    Uri uri = Uri(scheme: BoondApi.SCHEME, host: _parent.hostName, path: url);
    return await this.getHelper(uri, (Map<String, dynamic> m) {
      BoondAuth.log
          .info("[ActionsGet] level is ${BoondAuth.log.level.toString()}"
              " get $id is binding  ${m.toString()}");
      return ActionsGet.fromJson(m);
    });
  }

  /// search for actions from its criteria
  /// Example :
  /// ``
  /// {
  /// "keywords" : "Candd**"
  /// }
  /// .``
  /// will retrieve any Candidates relates actions.
  Future<ActionsSearch> search([Map<String, String> keywords]) async {
    const String url = "/api/actions";

    Uri uri = Uri(
        scheme: BoondApi.SCHEME,
        host: _parent.hostName,
        path: url,
        queryParameters: keywords);
    BoondAuth.log.fine("[ActionsSearch ${uri.query}]");
    return await this
        .getHelper(uri, (Map<String, dynamic> m) => ActionsSearch.fromJson(m));
  }

  /// Creates a new action.
  Future<ActionsGet> post(ActionsPost c) async {
    const String url = "/api/actions";

    Uri uri = Uri(scheme: BoondApi.SCHEME, host: _parent.hostName, path: url);
    return await this.postHelper(
        uri, c.toJson(), (Map<String, dynamic> m) => ActionsGet.fromJson(m));
  }

  /// update action elements.
  Future<ActionsGet> put(ActionsGet c) async {
    String url = "/api/actions/${c.data.id}";

    Map<String, dynamic> _valuesToPut = {"data": c.data.toJson()};
    Uri uri = Uri(scheme: BoondApi.SCHEME, host: _parent.hostName, path: url);
    return await this.putHelper(uri, _valuesToPut, (Map<String, dynamic> m) {
      return ActionsGet.fromJson(m);
    });
  }
}

/// access to document services.
class DocumentsApi extends _EntityApi {
  DocumentsApi(BoondApi parent) : super(parent);

  /// post a new document content.
  Future<DocumentsGet> post(DocumentsPost doc) async {
    String url = "/api/documents";
    Uri uri = Uri(scheme: BoondApi.SCHEME, host: _parent.hostName, path: url);

    http.MultipartFile f = http.MultipartFile.fromBytes("file", doc.fileContent,
        filename: doc.filename, contentType: doc.fileType);
    List<http.MultipartFile> files = List<http.MultipartFile>()..add(f);

    Map<String, String> fields = {
      'parentType': doc.parentType,
      'parentId': doc.parentId
    };

    return await this.postFormHelper(uri, fields, files,
        (Map<String, dynamic> m) {
      BoondAuth.log.fine("[DocumentsApi.post] response is  ${m.toString()}");
      return DocumentsGet.fromJson(m);
    });
  }
}
