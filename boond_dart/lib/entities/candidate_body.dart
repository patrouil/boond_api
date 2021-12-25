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

part 'candidate_body.g.dart';

@JsonSerializable()
class CandidateGet {
  BoondMeta meta;
  CandidateGetData data;
  List<BoondIncluded> included;

  CandidateGet({
    required this.meta,
    required this.data,
    required this.included,
  });

  factory CandidateGet.fromJson(Map<String, dynamic> json) =>
      _$CandidateGetFromJson(json);

  Map<String, dynamic> toJson() => _$CandidateGetToJson(this);
}

@JsonSerializable()
class CandidateGetData {
  String? id;
  String type;
  CandidateAttributes attributes;
  BoondRelationships relationships;

  CandidateGetData({
    this.id,
    required this.type,
    required this.attributes,
    required this.relationships,
  });

  factory CandidateGetData.fromJson(Map<String, dynamic> json) =>
      _$CandidateGetDataFromJson(json);

  Map<String, dynamic> toJson() => _$CandidateGetDataToJson(this);
}

@JsonSerializable()
class CandidateSearch {
  BoondMeta meta;
  List<CandidateSearchData> data;
  List<BoondIncluded> included;

  CandidateSearch({
    required this.meta,
    required this.data,
    required this.included,
  });

  factory CandidateSearch.fromJson(Map<String, dynamic> json) =>
      _$CandidateSearchFromJson(json);

  Map<String, dynamic> toJson() => _$CandidateSearchToJson(this);
}

@JsonSerializable()
class CandidateSearchData {
  String id;
  String type;
  CandidateAttributes? attributes;
  BoondRelationships? relationships;

  CandidateSearchData({
    required this.id,
    required this.type,
    this.attributes,
    this.relationships,
  });

  factory CandidateSearchData.fromJson(Map<String, dynamic> json) =>
      _$CandidateSearchDataFromJson(json);

  Map<String, dynamic> toJson() => _$CandidateSearchDataToJson(this);
}

@JsonSerializable()
class CandidatePost {
  CandidatePostData data;

  CandidatePost({
    required this.data,
  });

  factory CandidatePost.fromCandidateGet(CandidateGet cg) {
    CandidatePost cp =
        CandidatePost(data: CandidatePostData.fromCandidateGetData(cg.data));
    return cp;
  }

  factory CandidatePost.fromJson(Map<String, dynamic> json) =>
      _$CandidatePostFromJson(json);

  Map<String, dynamic> toJson() => _$CandidatePostToJson(this);
}

@JsonSerializable()
class CandidatePostData {
  String type;
  String? id;
  CandidateAttributes attributes;

  CandidatePostData({
    required this.attributes,
    required this.type,
    this.id,
  });

  factory CandidatePostData.fromCandidateGetData(CandidateGetData cgd) {
    return CandidatePostData(
        attributes: cgd.attributes, type: cgd.type, id: cgd.id);
  }

  factory CandidatePostData.fromJson(Map<String, dynamic> json) =>
      _$CandidatePostDataFromJson(json);

  Map<String, dynamic> toJson() => _$CandidatePostDataToJson(this);
}

@JsonSerializable(includeIfNull: false)
class CandidateAttributes {
  String? creationDate;
  String? updateDate;
  int? civility;
  String? lastName;
  String? firstName;
  String? title;
  int? state;
  String? email1;
  String? email2;
  String? email3;
  String? phone1;
  String? phone2;
  String? phone3;
  String? fax;
  String? address;
  String? postcode;
  String? town;
  String? country;
  CandidateSource? source;
  @JsonKey(fromJson: BoondHelpers.parseDateTime)
  DateTime? dateOfBirth;
  List<String>? mobilityAreas;
  String? globalEvaluation;
  List<String>? evaluations;
  int? availability;
  bool? isVisible;
  String? informationComments;
  List<String>? socialNetworks;

  CandidateAttributes({
    this.creationDate,
    this.updateDate,
    this.civility,
    this.lastName,
    this.firstName,
    this.title,
    this.state,
    this.email1,
    this.email2,
    this.email3,
    this.phone1,
    this.phone2,
    this.phone3,
    this.fax,
    this.address,
    this.postcode,
    this.town,
    this.country,
    this.source,
    this.dateOfBirth,
    this.mobilityAreas,
    this.globalEvaluation,
    this.evaluations,
    this.availability,
    this.isVisible,
    this.informationComments,
    this.socialNetworks,
  });

  factory CandidateAttributes.fromJson(Map<String, dynamic> json) =>
      _$CandidateAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$CandidateAttributesToJson(this);
}

@JsonSerializable()
class CandidateSource {
  int typeOf;
  String? detail;

  CandidateSource({
    required this.typeOf,
    this.detail,
  });

  factory CandidateSource.fromJson(Map<String, dynamic> json) =>
      _$CandidateSourceFromJson(json);

  Map<String, dynamic> toJson() => _$CandidateSourceToJson(this);
}
