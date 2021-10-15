part of 'boond_api.dart';

/// access to document services.
class DocumentsApi extends _EntityApi {
  const DocumentsApi(BoondApi parent) : super(parent);

  /// post a new document content.
  Future<DocumentsGet> post(DocumentsPost doc) async {
    const String url = "/api/documents";
    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);

    http.MultipartFile f = http.MultipartFile.fromBytes("file", doc.fileContent,
        filename: doc.filename, contentType: doc.fileType);
    List<http.MultipartFile> files = List.filled(1, f);

    Map<String, String> fields = {
      'parentType': doc.parentType,
      'parentId': doc.parentId
    };

    return await postFormHelper(uri, fields, files, (Map<String, dynamic> m) {
      BoondAuth.log.fine("[DocumentsApi.post] response is  ${m.toString()}");
      return DocumentsGet.fromJson(m);
    });
  }

  Future<Uint8List> get(String documentId) {
    String url = "/api/documents/$documentId";
    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return getBinaryHelper(uri);
  }
}
