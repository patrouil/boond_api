// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidate_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CandidateGet _$CandidateGetFromJson(Map<String, dynamic> json) => CandidateGet(
      meta: BoondMeta.fromJson(json['meta'] as Map<String, dynamic>),
      data: CandidateGetData.fromJson(json['data'] as Map<String, dynamic>),
      included: (json['included'] as List<dynamic>)
          .map((e) => BoondIncluded.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CandidateGetToJson(CandidateGet instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
      'included': instance.included,
    };

CandidateGetData _$CandidateGetDataFromJson(Map<String, dynamic> json) =>
    CandidateGetData(
      id: json['id'] as String?,
      type: json['type'] as String,
      attributes: CandidateAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
      relationships: BoondRelationships.fromJson(
          json['relationships'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CandidateGetDataToJson(CandidateGetData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

CandidateSearch _$CandidateSearchFromJson(Map<String, dynamic> json) =>
    CandidateSearch(
      meta: BoondMeta.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => CandidateSearchData.fromJson(e as Map<String, dynamic>))
          .toList(),
      included: (json['included'] as List<dynamic>)
          .map((e) => BoondIncluded.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CandidateSearchToJson(CandidateSearch instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
      'included': instance.included,
    };

CandidateSearchData _$CandidateSearchDataFromJson(Map<String, dynamic> json) =>
    CandidateSearchData(
      id: json['id'] as String,
      type: json['type'] as String,
      attributes: json['attributes'] == null
          ? null
          : CandidateAttributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
      relationships: json['relationships'] == null
          ? null
          : BoondRelationships.fromJson(
              json['relationships'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CandidateSearchDataToJson(
        CandidateSearchData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

CandidatePost _$CandidatePostFromJson(Map<String, dynamic> json) =>
    CandidatePost(
      data: CandidatePostData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CandidatePostToJson(CandidatePost instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

CandidatePostData _$CandidatePostDataFromJson(Map<String, dynamic> json) =>
    CandidatePostData(
      attributes: CandidateAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
      type: json['type'] as String,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$CandidatePostDataToJson(CandidatePostData instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'attributes': instance.attributes,
    };

CandidateAttributes _$CandidateAttributesFromJson(Map<String, dynamic> json) =>
    CandidateAttributes(
      creationDate: json['creationDate'] as String?,
      updateDate: json['updateDate'] as String?,
      civility: json['civility'] as int?,
      lastName: json['lastName'] as String?,
      firstName: json['firstName'] as String?,
      title: json['title'] as String?,
      state: json['state'] as int?,
      email1: json['email1'] as String?,
      email2: json['email2'] as String?,
      email3: json['email3'] as String?,
      phone1: json['phone1'] as String?,
      phone2: json['phone2'] as String?,
      phone3: json['phone3'] as String?,
      fax: json['fax'] as String?,
      address: json['address'] as String?,
      postcode: json['postcode'] as String?,
      town: json['town'] as String?,
      country: json['country'] as String?,
      source: json['source'] == null
          ? null
          : CandidateSource.fromJson(json['source'] as Map<String, dynamic>),
      dateOfBirth: BoondHelpers.parseDateTime(json['dateOfBirth'] as String?),
      mobilityAreas: (json['mobilityAreas'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      globalEvaluation: json['globalEvaluation'] as String?,
      evaluations: (json['evaluations'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      availability: json['availability'] as int?,
      isVisible: json['isVisible'] as bool?,
      informationComments: json['informationComments'] as String?,
      socialNetworks: (json['socialNetworks'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CandidateAttributesToJson(CandidateAttributes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('creationDate', instance.creationDate);
  writeNotNull('updateDate', instance.updateDate);
  writeNotNull('civility', instance.civility);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('firstName', instance.firstName);
  writeNotNull('title', instance.title);
  writeNotNull('state', instance.state);
  writeNotNull('email1', instance.email1);
  writeNotNull('email2', instance.email2);
  writeNotNull('email3', instance.email3);
  writeNotNull('phone1', instance.phone1);
  writeNotNull('phone2', instance.phone2);
  writeNotNull('phone3', instance.phone3);
  writeNotNull('fax', instance.fax);
  writeNotNull('address', instance.address);
  writeNotNull('postcode', instance.postcode);
  writeNotNull('town', instance.town);
  writeNotNull('country', instance.country);
  writeNotNull('source', instance.source);
  writeNotNull('dateOfBirth', instance.dateOfBirth?.toIso8601String());
  writeNotNull('mobilityAreas', instance.mobilityAreas);
  writeNotNull('globalEvaluation', instance.globalEvaluation);
  writeNotNull('evaluations', instance.evaluations);
  writeNotNull('availability', instance.availability);
  writeNotNull('isVisible', instance.isVisible);
  writeNotNull('informationComments', instance.informationComments);
  writeNotNull('socialNetworks', instance.socialNetworks);
  return val;
}

CandidateSource _$CandidateSourceFromJson(Map<String, dynamic> json) =>
    CandidateSource(
      typeOf: json['typeOf'] as int,
      detail: json['detail'] as String?,
    );

Map<String, dynamic> _$CandidateSourceToJson(CandidateSource instance) =>
    <String, dynamic>{
      'typeOf': instance.typeOf,
      'detail': instance.detail,
    };
