part of 'boond_api.dart';

/// Access to application/dictionary services.
/// useful for graphical applications such as Web pages.
class AppDictionaryApi extends _EntityApi {
  const AppDictionaryApi(BoondApi parent) : super(parent);

  // Upload any dictionary data.
  Future<AppDictionaryGet> get() async {
    const String url = "/api/application/dictionary";
    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);

    return await getHelper(
        uri, (Map<String, dynamic> m) => AppDictionaryGet.fromJson(m));
  }
}
