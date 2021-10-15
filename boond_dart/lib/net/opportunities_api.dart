part of 'boond_api.dart';

/// Access to opportunities services.
///
class OpportunitiesApi extends _EntityApi {
  const OpportunitiesApi(BoondApi parent) : super(parent);

  /// create/get a new opportunities Template.
  /// the resulting object has no ID.
  Future<OpportunitiesGet> empty() async {
    const String url = "/api/opportunities/default";

    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return await getHelper(
        uri, (Map<String, dynamic> m) => OpportunitiesGet.fromJson(m));
  }

  /// fetch a opportunities URI from his ID.
  /// used to access to BoondManager native application and open this opportunities definition.
  Uri getInformationUri(String id) {
    String url = "/opportunities/$id/information";

    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return uri;
  }

  /// get synthesis data from the OpportunitiesGet ID.
  Future<OpportunitiesGet> get(String id) async {
    String url = "/api/opportunities/$id";

    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return await getHelper(uri, (Map<String, dynamic> m) {
      BoondAuth.log
          .info("[OpportunitiesGet] level is ${BoondAuth.log.level.toString()}"
              " get $id is binding  ${m.toString()}");
      return OpportunitiesGet.fromJson(m);
    });
  }

  // get detailed information from the Candidate ID..
  Future<OpportunitiesGet> information(String id) async {
    String url = "/api/opportunities/$id/information";

    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return await getHelper(uri, (Map<String, dynamic> m) {
      BoondAuth.log.fine("[information] get $id is binding  ${m.toString()}");
      return OpportunitiesGet.fromJson(m);
    });
  }

  /// lookup some OpportunitiesGet based on a key : value set of criteria.
  /// Example :
  /// ``
  /// {
  /// "keywordsType" : "emails",
  /// "keywords" : "toto@nowhere.com"
  /// }
  /// ``
  /// will return every Candidate having such an email.
  Future<OpportunitiesSearch> search([Map<String, String>? keywords]) async {
    const String url = "/api/opportunities";

    Uri uri = Uri(
        scheme: BoondApi.kScheme,
        host: _parent.hostName,
        path: url,
        queryParameters: keywords);
    BoondAuth.log.fine("[search ${uri.query}]");
    return await getHelper(
        uri, (Map<String, dynamic> m) => OpportunitiesSearch.fromJson(m));
  }

  /// Creates a new Opportunities.
  /// Use the [empty] method before then the update it's attributes.
  /// for compatibility reason, if an ID exists a [put_information] is done.
  Future<OpportunitiesGet> post(CandidatePost c) async {
    // if Opportunities ID is zero. Create a new one.
    String url = (c.data.id != "0")
        ? "/api/opportunities/${c.data.id}/information"
        : "/api/opportunities";

    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return await postHelper(uri, c.toJson(),
        (Map<String, dynamic> m) => OpportunitiesGet.fromJson(m));
  }

  /// update information part of a Candidate;
  Future<OpportunitiesGet> put_information(OpportunitiesGet c) async {
    String url = "/api/opportunities/${c.data.id}/information";

    Map<String, dynamic> _valuesToPut = {"data": c.data.toJson()};
    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return await putHelper(uri, _valuesToPut, (Map<String, dynamic> m) {
      return OpportunitiesGet.fromJson(m);
    });
  }
}
