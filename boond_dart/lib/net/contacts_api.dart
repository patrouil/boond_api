/*
COPYRIGHT
 */

part of 'boond_api.dart';

/// Access to candidate services.
class ContactsApi extends _EntityApi {
  const ContactsApi(BoondApi parent) : super(parent);

  /// create/get a new Candidate Template.
  /// the resulting object has no ID.
  Future<ContactsGet> empty() async {
    const String url = "/api/contacts/default";

    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return await getHelper(
        uri, (Map<String, dynamic> m) => ContactsGet.fromJson(m));
  }

  /// fetch a Companies URI from his ID.
  /// used to access to BoondManager native application and open this candidate definition.
  Uri getInformationUri(String id) {
    String url = "/contacts/$id/information";

    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return uri;
  }

  /// get synthesis data from the Candidate ID.
  Future<ContactsGet> get(String id) async {
    String url = "/api/contacts/$id";

    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return await getHelper(uri, (Map<String, dynamic> m) {
      BoondAuth.log
          .info("[ContactsGet] level is ${BoondAuth.log.level.toString()}"
              " get $id is binding  ${m.toString()}");
      return ContactsGet.fromJson(m);
    });
  }

  // get detailed information from the Candidate ID..
  Future<ContactsGet> information(String id) async {
    String url = "/api/contacts/$id/information";

    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return await getHelper(uri, (Map<String, dynamic> m) {
      BoondAuth.log.fine("[information] get $id is binding  ${m.toString()}");
      return ContactsGet.fromJson(m);
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
  Future<ContactsSearch> search([Map<String, String>? keywords]) async {
    const String url = "/api/contacts";

    Uri uri = Uri(
        scheme: BoondApi.kScheme,
        host: _parent.hostName,
        path: url,
        queryParameters: keywords);
    BoondAuth.log.fine("[search ${uri.query}]");
    return await getHelper(
        uri, (Map<String, dynamic> m) => ContactsSearch.fromJson(m));
  }

  /// Creates a new Candidates.
  /// Use the [empty] method before then the update it's attributes.
  /// for compatibility reason, if an ID exists a [put_information] is done.
  Future<ContactsGet> post(ContactsPost c) async {
    // if Candidate ID is zero. Create a new one.
    String url = (c.data.id != "0")
        ? "/api/contacts/${c.data.id}/information"
        : "/api/contacts";

    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return await postHelper(
        uri, c.toJson(), (Map<String, dynamic> m) => ContactsGet.fromJson(m));
  }

  /// update information part of a Candidate;
  Future<ContactsGet> put_information(ContactsGet c) async {
    String url = "/api/contacts/${c.data.id}/information";

    Map<String, dynamic> _valuesToPut = {"data": c.data.toJson()};
    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return await putHelper(uri, _valuesToPut, (Map<String, dynamic> m) {
      return ContactsGet.fromJson(m);
    });
  }
}
