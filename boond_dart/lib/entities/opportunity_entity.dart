/*
 * Copyright (c) patrouil (2021).This work is licensed under the
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

// To parse this JSON data, do
//
//     final opportunitiesGet = opportunitiesGetFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';

import 'boond_helpers.dart';
import 'boond_included.dart';
import 'boond_meta.dart';
import 'boond_relationship.dart';

part 'opportunity_entity.g.dart';

@JsonSerializable()
class OpportunitiesGet {
  OpportunitiesGet({
    required this.meta,
    required this.data,
    required this.included,
  });

  BoondMeta meta;
  OpportunitiesGetData data;
  List<BoondIncluded> included;

  factory OpportunitiesGet.fromJson(Map<String, dynamic> json) =>
      _$OpportunitiesGetFromJson(json);

  Map<String, dynamic> toJson() => _$OpportunitiesGetToJson(this);
}

@JsonSerializable()
class OpportunitiesSearch {
  OpportunitiesSearch({
    required this.meta,
    required this.data,
    required this.included,
  });

  BoondMeta meta;
  List<OpportunitiesGetData> data;
  List<BoondIncluded> included;

  factory OpportunitiesSearch.fromJson(Map<String, dynamic> json) =>
      _$OpportunitiesSearchFromJson(json);

  Map<String, dynamic> toJson() => _$OpportunitiesSearchToJson(this);
}

@JsonSerializable()
class OpportunitiesAttachedFlag {
  OpportunitiesAttachedFlag({
    required this.meta,
    required this.data,
    required this.included,
  });

  BoondMeta meta;
  List<OpportunitiesAttachedFlagData> data;
  List<BoondIncluded> included;

  factory OpportunitiesAttachedFlag.fromJson(Map<String, dynamic> json) =>
      _$OpportunitiesAttachedFlagFromJson(json);

  Map<String, dynamic> toJson() => _$OpportunitiesAttachedFlagToJson(this);
}

@JsonSerializable()
class OpportunitiesAttachedFlagData {
  String? id;
  String type;
  BoondRelationships? relationships;

  OpportunitiesAttachedFlagData({
    this.id,
    required this.type,
    this.relationships,
  });

  factory OpportunitiesAttachedFlagData.fromJson(Map<String, dynamic> json) =>
      _$OpportunitiesAttachedFlagDataFromJson(json);

  Map<String, dynamic> toJson() => _$OpportunitiesAttachedFlagDataToJson(this);
}

@JsonSerializable()
class OpportunitiesGetData {
  String? id;
  String type;
  OpportunitiesAttributes? attributes;
  BoondRelationships? relationships;
  OpportunitiesGetData({
    this.id,
    required this.type,
    this.attributes,
    this.relationships,
  });
  factory OpportunitiesGetData.fromJson(Map<String, dynamic> json) =>
      _$OpportunitiesGetDataFromJson(json);

  Map<String, dynamic> toJson() => _$OpportunitiesGetDataToJson(this);
}

@JsonSerializable()
class OpportunitiesAttributes {
  OpportunitiesAttributes({
    this.creationDate,
    this.title,
    this.reference,
    this.typeOf,
    this.mode,
    this.state,
    this.place,
    this.isVisible,
    this.startDate,
    this.closingDate,
    this.answerDate,
    this.duration,
    this.currency,
    this.exchangeRate,
    this.currencyAgency,
    this.exchangeRateAgency,
    this.turnoverWeightedExcludingTax,
    this.estimatesExcludingTax,
    this.turnoverEstimatedExcludingTax,
    this.expertiseArea,
    this.activityAreas,
    this.origin,
    this.tools,
    this.numberOfActivePositionings,
    this.canShowContact,
    this.canShowCompany,
  });

  @JsonKey(fromJson: BoondHelpers.parseDateTime)
  DateTime? creationDate;
  @JsonKey(fromJson: BoondHelpers.parseDateTime)
  DateTime? updateDate;
  String? title;
  String? reference;
  int? typeOf;
  int? mode;
  int? state;
  String? place;
  bool? isVisible;
  String? startDate;
  String? closingDate;
  String? answerDate;
  int? duration;
  int? currency;
  int? exchangeRate;
  int? currencyAgency;
  int? exchangeRateAgency;
  int? turnoverWeightedExcludingTax;
  int? estimatesExcludingTax;
  int? turnoverEstimatedExcludingTax;
  String? expertiseArea;
  List<String>? activityAreas;
  OpportunitiesOrigin? origin;
  List<String>? tools;
  int? numberOfActivePositionings;
  bool? canShowContact;
  bool? canShowCompany;

  factory OpportunitiesAttributes.fromJson(Map<String, dynamic> json) =>
      _$OpportunitiesAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$OpportunitiesAttributesToJson(this);
}

@JsonSerializable()
class OpportunitiesOrigin {
  OpportunitiesOrigin({
    this.detail,
    required this.typeOf,
  });

  String? detail;
  int typeOf;

  factory OpportunitiesOrigin.fromJson(Map<String, dynamic> json) =>
      _$OpportunitiesOriginFromJson(json);

  Map<String, dynamic> toJson() => _$OpportunitiesOriginToJson(this);
}
