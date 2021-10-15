// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companies_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompaniesGet _$CompaniesGetFromJson(Map<String, dynamic> json) => CompaniesGet(
      meta: BoondMeta.fromJson(json['meta'] as Map<String, dynamic>),
      data: CompaniesGetData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompaniesGetToJson(CompaniesGet instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };

CompaniesGetData _$CompaniesGetDataFromJson(Map<String, dynamic> json) =>
    CompaniesGetData(
      id: json['id'] as String?,
      type: json['type'] as String,
      attributes: CompaniesAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
      relationships: BoondRelationships.fromJson(
          json['relationships'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompaniesGetDataToJson(CompaniesGetData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

CompaniesInfo _$CompaniesInfoFromJson(Map<String, dynamic> json) =>
    CompaniesInfo(
      meta: BoondMeta.fromJson(json['meta'] as Map<String, dynamic>),
      data: CompaniesInfoData.fromJson(json['data'] as Map<String, dynamic>),
      included: (json['included'] as List<dynamic>)
          .map((e) => BoondIncluded.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CompaniesInfoToJson(CompaniesInfo instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
      'included': instance.included,
    };

CompaniesInfoData _$CompaniesInfoDataFromJson(Map<String, dynamic> json) =>
    CompaniesInfoData(
      id: json['id'] as String?,
      type: json['type'] as String,
      attributes: CompaniesAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
      relationships: BoondRelationships.fromJson(
          json['relationships'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompaniesInfoDataToJson(CompaniesInfoData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

CompaniesSearch _$CompaniesSearchFromJson(Map<String, dynamic> json) =>
    CompaniesSearch(
      meta: BoondMeta.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => CompaniesSearchData.fromJson(e as Map<String, dynamic>))
          .toList(),
      included: (json['included'] as List<dynamic>)
          .map((e) => BoondIncluded.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CompaniesSearchToJson(CompaniesSearch instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
      'included': instance.included,
    };

CompaniesSearchData _$CompaniesSearchDataFromJson(Map<String, dynamic> json) =>
    CompaniesSearchData(
      id: json['id'] as String?,
      type: json['type'] as String,
      attributes: CompaniesAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
      relationships: BoondRelationships.fromJson(
          json['relationships'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompaniesSearchDataToJson(
        CompaniesSearchData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

CompaniesPost _$CompaniesPostFromJson(Map<String, dynamic> json) =>
    CompaniesPost(
      data: CompaniesPostData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompaniesPostToJson(CompaniesPost instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

CompaniesPostData _$CompaniesPostDataFromJson(Map<String, dynamic> json) =>
    CompaniesPostData(
      type: json['type'] as String,
      id: json['id'] as String?,
      attributes: CompaniesAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
      relationships: BoondRelationships.fromJson(
          json['relationships'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompaniesPostDataToJson(CompaniesPostData instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

CompaniesAttributes _$CompaniesAttributesFromJson(Map<String, dynamic> json) =>
    CompaniesAttributes(
      creationDate: BoondHelpers.parseDateTime(json['creationDate'] as String?),
      updateDate: BoondHelpers.parseDateTime(json['updateDate'] as String?),
      name: json['name'] as String?,
      state: json['state'] as int?,
      website: json['website'] as String?,
      thumbnail: json['thumbnail'] as String?,
      phone1: json['phone1'] as String?,
      fax: json['fax'] as String?,
      postcode: json['postcode'] as String?,
      address: json['address'] as String?,
      town: json['town'] as String?,
      country: json['country'] as String?,
      number: json['number'] as String?,
      origin: json['origin'] == null
          ? null
          : CompaniesOrigin.fromJson(json['origin'] as Map<String, dynamic>),
      staff: json['staff'] as int?,
      expertiseArea: json['expertiseArea'] as String?,
      informationComments: json['informationComments'] as String?,
      vatNumber: json['vatNumber'] as String?,
      registrationNumber: json['registrationNumber'] as String?,
      legalStatus: json['legalStatus'] as String?,
      registeredOffice: json['registeredOffice'] as String?,
      apeCode: json['apeCode'] as String?,
    );

Map<String, dynamic> _$CompaniesAttributesToJson(
        CompaniesAttributes instance) =>
    <String, dynamic>{
      'creationDate': instance.creationDate?.toIso8601String(),
      'updateDate': instance.updateDate?.toIso8601String(),
      'name': instance.name,
      'state': instance.state,
      'website': instance.website,
      'thumbnail': instance.thumbnail,
      'phone1': instance.phone1,
      'fax': instance.fax,
      'postcode': instance.postcode,
      'address': instance.address,
      'town': instance.town,
      'country': instance.country,
      'number': instance.number,
      'origin': instance.origin,
      'staff': instance.staff,
      'expertiseArea': instance.expertiseArea,
      'informationComments': instance.informationComments,
      'vatNumber': instance.vatNumber,
      'registrationNumber': instance.registrationNumber,
      'legalStatus': instance.legalStatus,
      'registeredOffice': instance.registeredOffice,
      'apeCode': instance.apeCode,
    };

CompaniesOrigin _$CompaniesOriginFromJson(Map<String, dynamic> json) =>
    CompaniesOrigin(
      typeOf: json['typeOf'] as int,
      detail: json['detail'] as String?,
    );

Map<String, dynamic> _$CompaniesOriginToJson(CompaniesOrigin instance) =>
    <String, dynamic>{
      'typeOf': instance.typeOf,
      'detail': instance.detail,
    };
