/*
COPYRIGHT
 */

part of 'boond_api.dart';

/// Access to candidate services.
class CandidateApi extends _EntityApi {
  const CandidateApi(BoondApi parent) : super(parent);

  /// create/get a new Candidate Template.
  /// the resulting object has no ID.
  Future<CandidateGet> empty() async {
    const String url = "/api/candidates/default";

    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return await getHelper(
        uri, (Map<String, dynamic> m) => CandidateGet.fromJson(m));
  }

  /// fetch a Candidate URI from his ID.
  /// used to access to BoondManager native application and open this candidate definition.
  Uri getInformationUri(String id) {
    String url = "/candidates/$id/information";

    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return uri;
  }

  /// get synthesis data from the Candidate ID.
  Future<CandidateGet> get(String id) async {
    String url = "/api/candidates/$id";

    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return await getHelper(uri, (Map<String, dynamic> m) {
      BoondAuth.log
          .info("[CandidateGet] level is ${BoondAuth.log.level.toString()}"
              " get $id is binding  ${m.toString()}");
      return CandidateGet.fromJson(m);
    });
  }

  // get detailed information from the Candidate ID..
  Future<CandidateGet> information(String id) async {
    String url = "/api/candidates/$id/information";

    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return await getHelper(uri, (Map<String, dynamic> m) {
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
  Future<CandidateSearch> search([Map<String, String>? keywords]) async {
    const String url = "/api/candidates";

    Uri uri = Uri(
        scheme: BoondApi.kScheme,
        host: _parent.hostName,
        path: url,
        queryParameters: keywords);
    BoondAuth.log.fine("[search ${uri.query}]");
    return await getHelper(
        uri, (Map<String, dynamic> m) => CandidateSearch.fromJson(m));
  }

  /// Creates a new Candidates.
  /// Use the [empty] method before then the update it's attributes.
  /// for compatibility reason, if an ID exists a [put_information] is done.
  Future<CandidateGet> post(CandidatePost c) async {
    // if Candidate ID is zero. Create a new one.
    String url = (c.data.id != "0")
        ? "/api/candidates/${c.data.id}/information"
        : "/api/candidates";

    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return await postHelper(
        uri, c.toJson(), (Map<String, dynamic> m) => CandidateGet.fromJson(m));
  }

  /// update information part of a Candidate;
  Future<CandidateGet> put_information(CandidateGet c) async {
    String url = "/api/candidates/${c.data.id}/information";

    Map<String, dynamic> _valuesToPut = {"data": c.data.toJson()};
    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return await putHelper(uri, _valuesToPut, (Map<String, dynamic> m) {
      return CandidateGet.fromJson(m);
    });
  }
}
