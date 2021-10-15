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

part 'companies_entity.g.dart';

@JsonSerializable()
class CompaniesGet {
  CompaniesGet({
    required this.meta,
    required this.data,
  });

  BoondMeta meta;
  CompaniesGetData data;

  factory CompaniesGet.fromJson(Map<String, dynamic> json) =>
      _$CompaniesGetFromJson(json);

  Map<String, dynamic> toJson() => _$CompaniesGetToJson(this);
}

@JsonSerializable()
class CompaniesGetData {
  CompaniesGetData({
    this.id,
    required this.type,
    required this.attributes,
    required this.relationships,
  });

  String? id;
  String type;
  CompaniesAttributes attributes;
  BoondRelationships relationships;

  factory CompaniesGetData.fromJson(Map<String, dynamic> json) =>
      _$CompaniesGetDataFromJson(json);

  Map<String, dynamic> toJson() => _$CompaniesGetDataToJson(this);
}

@JsonSerializable()
class CompaniesInfo {
  CompaniesInfo({
    required this.meta,
    required this.data,
    required this.included,
  });

  BoondMeta meta;
  CompaniesInfoData data;
  List<BoondIncluded> included;

  factory CompaniesInfo.fromJson(Map<String, dynamic> json) =>
      _$CompaniesInfoFromJson(json);

  Map<String, dynamic> toJson() => _$CompaniesInfoToJson(this);
}

@JsonSerializable()
class CompaniesInfoData {
  CompaniesInfoData({
    this.id,
    required this.type,
    required this.attributes,
    required this.relationships,
  });

  String? id;
  String type;
  CompaniesAttributes attributes;
  BoondRelationships relationships;

  factory CompaniesInfoData.fromJson(Map<String, dynamic> json) =>
      _$CompaniesInfoDataFromJson(json);

  Map<String, dynamic> toJson() => _$CompaniesInfoDataToJson(this);
}

@JsonSerializable()
class CompaniesSearch {
  CompaniesSearch({
    required this.meta,
    required this.data,
    required this.included,
  });

  BoondMeta meta;
  List<CompaniesSearchData> data;
  List<BoondIncluded> included;

  factory CompaniesSearch.fromJson(Map<String, dynamic> json) =>
      _$CompaniesSearchFromJson(json);

  Map<String, dynamic> toJson() => _$CompaniesSearchToJson(this);
}

@JsonSerializable()
class CompaniesSearchData {
  CompaniesSearchData({
    this.id,
    required this.type,
    required this.attributes,
    required this.relationships,
  });

  String? id;
  String type;
  CompaniesAttributes attributes;
  BoondRelationships relationships;

  factory CompaniesSearchData.fromJson(Map<String, dynamic> json) =>
      _$CompaniesSearchDataFromJson(json);

  Map<String, dynamic> toJson() => _$CompaniesSearchDataToJson(this);
}

@JsonSerializable()
class CompaniesPost {
  CompaniesPostData data;

  CompaniesPost({
    required this.data,
  });

  factory CompaniesPost.fromActionsGet(CompaniesGet ag) {
    CompaniesPost cp =
        CompaniesPost(data: CompaniesPostData.fromCompaniesGetData(ag.data));
    return cp;
  }

  factory CompaniesPost.fromJson(Map<String, dynamic> json) =>
      _$CompaniesPostFromJson(json);

  Map<String, dynamic> toJson() => _$CompaniesPostToJson(this);
}

@JsonSerializable()
class CompaniesPostData {
  String type;
  String? id;
  CompaniesAttributes attributes;
  BoondRelationships relationships;

  CompaniesPostData(
      {required this.type,
      this.id,
      required this.attributes,
      required this.relationships});

  factory CompaniesPostData.fromCompaniesGetData(CompaniesGetData agd) {
    return CompaniesPostData(
        attributes: agd.attributes,
        type: agd.type,
        id: agd.id,
        relationships: agd.relationships);
  }

  factory CompaniesPostData.fromJson(Map<String, dynamic> json) =>
      _$CompaniesPostDataFromJson(json);

  Map<String, dynamic> toJson() => _$CompaniesPostDataToJson(this);
}

@JsonSerializable()
class CompaniesAttributes {
  CompaniesAttributes({
    this.creationDate,
    this.updateDate,
    this.name,
    this.state,
    this.website,
    this.thumbnail,
    this.phone1,
    this.fax,
    this.postcode,
    this.address,
    this.town,
    this.country,
    this.number,
    this.origin,
    this.staff,
    this.expertiseArea,
    this.informationComments,
    // this.departments,
    this.vatNumber,
    this.registrationNumber,
    this.legalStatus,
    this.registeredOffice,
    this.apeCode,
    // this.billingDetails,
    // this.socialNetworks,
  });

  @JsonKey(fromJson: BoondHelpers.parseDateTime)
  DateTime? creationDate;
  @JsonKey(fromJson: BoondHelpers.parseDateTime)
  DateTime? updateDate;
  String? name;
  int? state;
  String? website;
  String? thumbnail;
  String? phone1;
  String? fax;
  String? postcode;
  String? address;
  String? town;
  String? country;
  String? number;
  CompaniesOrigin? origin;
  int? staff;
  String? expertiseArea;
  String? informationComments;
  // List<String>? departments;
  String? vatNumber;
  String? registrationNumber;
  String? legalStatus;
  String? registeredOffice;
  String? apeCode;
  // List<dynamic>? billingDetails;
  // List<dynamic>? socialNetworks;

  factory CompaniesAttributes.fromJson(Map<String, dynamic> json) =>
      _$CompaniesAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$CompaniesAttributesToJson(this);
}

@JsonSerializable()
class CompaniesOrigin {
  CompaniesOrigin({
    required this.typeOf,
    this.detail,
  });

  int typeOf;
  String? detail;

  factory CompaniesOrigin.fromJson(Map<String, dynamic> json) =>
      _$CompaniesOriginFromJson(json);

  Map<String, dynamic> toJson() => _$CompaniesOriginToJson(this);
}
