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

import 'package:json_annotation/json_annotation.dart';

import 'boond_helpers.dart';
import 'boond_relationship.dart';
import 'boond_included.dart';
import 'boond_meta.dart';

part 'contacts_entity.g.dart';

@JsonSerializable()
class ContactsGet {
  ContactsGet({
    required this.meta,
    required this.data,
    required this.included,
  });
  factory ContactsGet.fromJson(Map<String, dynamic> json) =>
      _$ContactsGetFromJson(json);

  Map<String, dynamic> toJson() => _$ContactsGetToJson(this);

  BoondMeta meta;
  ContactsGetData data;
  List<BoondIncluded> included;
}

@JsonSerializable()
class ContactsGetData {
  ContactsGetData({
    this.id,
    required this.type,
    required this.attributes,
    required this.relationships,
  });

  factory ContactsGetData.fromJson(Map<String, dynamic> json) =>
      _$ContactsGetDataFromJson(json);

  Map<String, dynamic> toJson() => _$ContactsGetDataToJson(this);

  String? id;
  String type;
  ContactsAttributes attributes;
  BoondRelationships relationships;
}

@JsonSerializable()
class ContactsInfo {
  ContactsInfo({
    required this.meta,
    required this.data,
    required this.included,
  });

  factory ContactsInfo.fromJson(Map<String, dynamic> json) =>
      _$ContactsInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ContactsInfoToJson(this);
  BoondMeta meta;
  ContactsInfoData data;
  List<BoondIncluded> included;
}

@JsonSerializable()
class ContactsInfoData {
  ContactsInfoData({
    this.id,
    required this.type,
    required this.attributes,
    required this.relationships,
  });

  factory ContactsInfoData.fromJson(Map<String, dynamic> json) =>
      _$ContactsInfoDataFromJson(json);

  Map<String, dynamic> toJson() => _$ContactsInfoDataToJson(this);

  String? id;
  String type;
  ContactsAttributes attributes;
  BoondRelationships relationships;
}

@JsonSerializable()
class ContactsSearch {
  ContactsSearch({
    required this.meta,
    required this.data,
    this.included,
  });

  factory ContactsSearch.fromJson(Map<String, dynamic> json) =>
      _$ContactsSearchFromJson(json);

  Map<String, dynamic> toJson() => _$ContactsSearchToJson(this);

  BoondMeta meta;
  List<ContactsSearchData> data;
  List<BoondIncluded>? included;
}

@JsonSerializable()
class ContactsSearchData {
  ContactsSearchData({
    this.id,
    required this.type,
    required this.attributes,
    this.relationships,
  });

  factory ContactsSearchData.fromJson(Map<String, dynamic> json) =>
      _$ContactsSearchDataFromJson(json);

  Map<String, dynamic> toJson() => _$ContactsSearchDataToJson(this);

  String? id;
  String type;
  ContactsAttributes attributes;
  BoondRelationships? relationships;
}

@JsonSerializable()
class ContactsPost {
  ContactsPostData data;

  ContactsPost({
    required this.data,
  });

  factory ContactsPost.fromCandidateGet(ContactsGet cg) {
    ContactsPost cp =
        ContactsPost(data: ContactsPostData.fromContactsGetData(cg.data));
    return cp;
  }

  factory ContactsPost.fromJson(Map<String, dynamic> json) =>
      _$ContactsPostFromJson(json);

  Map<String, dynamic> toJson() => _$ContactsPostToJson(this);
}

@JsonSerializable()
class ContactsPostData {
  String type;
  String? id;
  ContactsAttributes attributes;

  ContactsPostData({
    required this.attributes,
    required this.type,
    this.id,
  });

  factory ContactsPostData.fromContactsGetData(ContactsGetData cgd) {
    return ContactsPostData(
        attributes: cgd.attributes, type: cgd.type, id: cgd.id);
  }

  factory ContactsPostData.fromJson(Map<String, dynamic> json) =>
      _$ContactsPostDataFromJson(json);

  Map<String, dynamic> toJson() => _$ContactsPostDataToJson(this);
}

@JsonSerializable()
class ContactsAttributes {
  ContactsAttributes(
      {this.creationDate,
      this.updateDate,
      this.civility,
      this.firstName,
      this.lastName,
      this.thumbnail,
      this.state,
      this.email1,
      this.email2,
      this.email3,
      this.phone1,
      this.phone2,
      this.fax,
      this.address,
      this.postcode,
      this.town,
      this.country,
      this.origin,
      this.activityAreas,
      this.informationComments,
      this.tools,
      this.department,
      this.function,
      this.socialNetworks,
      this.canReadContact,
      this.canWriteContact});

  factory ContactsAttributes.fromJson(Map<String, dynamic> json) =>
      _$ContactsAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$ContactsAttributesToJson(this);

  @JsonKey(fromJson: BoondHelpers.parseDateTime)
  DateTime? creationDate;
  @JsonKey(fromJson: BoondHelpers.parseDateTime)
  DateTime? updateDate;
  int? civility;
  String? firstName;
  String? lastName;
  String? thumbnail;
  int? state;
  String? email1;
  String? email2;
  String? email3;
  String? phone1;
  String? phone2;
  String? fax;
  String? address;
  String? postcode;
  String? town;
  String? country;
  ContactsOrigin? origin;
  List<String>? activityAreas;
  String? informationComments;
  List<String>? tools;
  String? department;
  String? function;
  List<String>? socialNetworks;
  bool? canReadContact;
  bool? canWriteContact;
}

@JsonSerializable()
class ContactsOrigin {
  ContactsOrigin({
    required this.typeOf,
    this.detail,
  });

  factory ContactsOrigin.fromJson(Map<String, dynamic> json) =>
      _$ContactsOriginFromJson(json);

  Map<String, dynamic> toJson() => _$ContactsOriginToJson(this);

  int typeOf;
  String? detail;
}
