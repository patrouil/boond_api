part of 'boond_api.dart';

/// Access to application/current-user services.
/// Current User is defined by the authentication credentials.
class AppCurrentUserApi extends _EntityApi {
  const AppCurrentUserApi(BoondApi parent) : super(parent);

  /// get Current user detailed information.
  Future<AppCurrentUserGet> get() async {
    const String url = "/api/application/current-user";
    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);

    return await getHelper(
        uri, (Map<String, dynamic> m) => AppCurrentUserGet.fromJson(m));
  }
}
