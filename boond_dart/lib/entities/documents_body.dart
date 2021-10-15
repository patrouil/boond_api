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

import 'dart:typed_data';
import 'package:http_parser/http_parser.dart';

import 'package:json_annotation/json_annotation.dart';
import 'boond_meta.dart';

part 'documents_body.g.dart';

@JsonSerializable()
class DocumentsGet {
  BoondMeta meta;
  DocumentsGetData data;

  /// Default Constructor
  DocumentsGet({required this.meta, required this.data});

  factory DocumentsGet.fromJson(Map<String, dynamic> json) =>
      _$DocumentsGetFromJson(json);

  Map<String, dynamic> toJson() => _$DocumentsGetToJson(this);
}

class DocumentsPost {
  final String parentId;
  final String parentType;
  final String filename;
  final Uint8List fileContent;
  final MediaType fileType;

  DocumentsPost(
      {required this.parentId,
      required this.parentType,
      required this.filename,
      required this.fileContent,
      required this.fileType});
}

@JsonSerializable()
class DocumentsGetData {
  String id;
  String type;
  DocumentsAttributes? attributes;

  DocumentsGetData({required this.id, required this.type, this.attributes});

  factory DocumentsGetData.fromJson(Map<String, dynamic> json) =>
      _$DocumentsGetDataFromJson(json);

  Map<String, dynamic> toJson() => _$DocumentsGetDataToJson(this);
}

@JsonSerializable()
class DocumentsAttributes {
  String name;
  // there should be a content type.

  DocumentsAttributes({required this.name});

  factory DocumentsAttributes.fromJson(Map<String, dynamic> json) =>
      _$DocumentsAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$DocumentsAttributesToJson(this);
}
