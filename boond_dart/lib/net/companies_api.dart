/*
COPYRIGHT
 */

part of 'boond_api.dart';

/// Access to candidate services.
class CompaniesApi extends _EntityApi {
  const CompaniesApi(BoondApi parent) : super(parent);

  /// create/get a new Candidate Template.
  /// the resulting object has no ID.
  Future<CompaniesGet> empty() async {
    const String url = "/api/companies/default";

    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return await getHelper(
        uri, (Map<String, dynamic> m) => CompaniesGet.fromJson(m));
  }

  /// fetch a Companies URI from his ID.
  /// used to access to BoondManager native application and open this candidate definition.
  Uri getInformationUri(String id) {
    String url = "/companies/$id/information";

    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return uri;
  }

  /// get synthesis data from the Candidate ID.
  Future<CompaniesGet> get(String id) async {
    String url = "/api/companies/$id";

    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return await getHelper(uri, (Map<String, dynamic> m) {
      BoondAuth.log
          .fine("[CompaniesGet] level is ${BoondAuth.log.level.toString()}"
              " get $id is binding  ${m.toString()}");
      return CompaniesGet.fromJson(m);
    });
  }

  // get detailed information from the Candidate ID..
  Future<CompaniesInfo> information(String id) async {
    String url = "/api/companies/$id/information";

    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return await getHelper(uri, (Map<String, dynamic> m) {
      BoondAuth.log.fine("[information] get $id is binding  ${m.toString()}");
      return CompaniesInfo.fromJson(m);
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
  Future<CompaniesSearch> search([Map<String, String>? keywords]) async {
    const String url = "/api/companies";

    Uri uri = Uri(
        scheme: BoondApi.kScheme,
        host: _parent.hostName,
        path: url,
        queryParameters: keywords);
    BoondAuth.log.fine("[search ${uri.query}]");
    return await getHelper(
        uri, (Map<String, dynamic> m) => CompaniesSearch.fromJson(m));
  }

  /// Creates a new Candidates.
  /// Use the [empty] method before then the update it's attributes.
  /// for compatibility reason, if an ID exists a [put_information] is done.
  Future<CompaniesGet> post(CompaniesPost c) async {
    // if Candidate ID is zero. Create a new one.
    String url = (c.data.id != "0")
        ? "/api/companies/${c.data.id}/information"
        : "/api/companies";

    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return await postHelper(
        uri, c.toJson(), (Map<String, dynamic> m) => CompaniesGet.fromJson(m));
  }

  /// update information part of a Candidate;
  Future<CompaniesGet> put_information(CompaniesGet c) async {
    String url = "/api/companies/${c.data.id}/information";

    Map<String, dynamic> _valuesToPut = {"data": c.data.toJson()};
    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return await putHelper(uri, _valuesToPut, (Map<String, dynamic> m) {
      return CompaniesGet.fromJson(m);
    });
  }
}
