// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opportunity_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpportunitiesGet _$OpportunitiesGetFromJson(Map<String, dynamic> json) =>
    OpportunitiesGet(
      meta: BoondMeta.fromJson(json['meta'] as Map<String, dynamic>),
      data: OpportunitiesGetData.fromJson(json['data'] as Map<String, dynamic>),
      included: (json['included'] as List<dynamic>)
          .map((e) => BoondIncluded.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OpportunitiesGetToJson(OpportunitiesGet instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
      'included': instance.included,
    };

OpportunitiesSearch _$OpportunitiesSearchFromJson(Map<String, dynamic> json) =>
    OpportunitiesSearch(
      meta: BoondMeta.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => OpportunitiesGetData.fromJson(e as Map<String, dynamic>))
          .toList(),
      included: (json['included'] as List<dynamic>)
          .map((e) => BoondIncluded.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OpportunitiesSearchToJson(
        OpportunitiesSearch instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
      'included': instance.included,
    };

OpportunitiesAttachedFlag _$OpportunitiesAttachedFlagFromJson(
        Map<String, dynamic> json) =>
    OpportunitiesAttachedFlag(
      meta: BoondMeta.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              OpportunitiesAttachedFlagData.fromJson(e as Map<String, dynamic>))
          .toList(),
      included: (json['included'] as List<dynamic>)
          .map((e) => BoondIncluded.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OpportunitiesAttachedFlagToJson(
        OpportunitiesAttachedFlag instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
      'included': instance.included,
    };

OpportunitiesAttachedFlagData _$OpportunitiesAttachedFlagDataFromJson(
        Map<String, dynamic> json) =>
    OpportunitiesAttachedFlagData(
      id: json['id'] as String?,
      type: json['type'] as String,
      relationships: json['relationships'] == null
          ? null
          : BoondRelationships.fromJson(
              json['relationships'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OpportunitiesAttachedFlagDataToJson(
        OpportunitiesAttachedFlagData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'relationships': instance.relationships,
    };

OpportunitiesGetData _$OpportunitiesGetDataFromJson(
        Map<String, dynamic> json) =>
    OpportunitiesGetData(
      id: json['id'] as String?,
      type: json['type'] as String,
      attributes: json['attributes'] == null
          ? null
          : OpportunitiesAttributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
      relationships: json['relationships'] == null
          ? null
          : BoondRelationships.fromJson(
              json['relationships'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OpportunitiesGetDataToJson(
        OpportunitiesGetData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

OpportunitiesAttributes _$OpportunitiesAttributesFromJson(
        Map<String, dynamic> json) =>
    OpportunitiesAttributes(
      creationDate: BoondHelpers.parseDateTime(json['creationDate'] as String?),
      title: json['title'] as String?,
      reference: json['reference'] as String?,
      typeOf: json['typeOf'] as int?,
      mode: json['mode'] as int?,
      state: json['state'] as int?,
      place: json['place'] as String?,
      isVisible: json['isVisible'] as bool?,
      startDate: json['startDate'] as String?,
      closingDate: json['closingDate'] as String?,
      answerDate: json['answerDate'] as String?,
      duration: json['duration'] as int?,
      currency: json['currency'] as int?,
      exchangeRate: json['exchangeRate'] as int?,
      currencyAgency: json['currencyAgency'] as int?,
      exchangeRateAgency: json['exchangeRateAgency'] as int?,
      turnoverWeightedExcludingTax:
          json['turnoverWeightedExcludingTax'] as int?,
      estimatesExcludingTax: json['estimatesExcludingTax'] as int?,
      turnoverEstimatedExcludingTax:
          json['turnoverEstimatedExcludingTax'] as int?,
      expertiseArea: json['expertiseArea'] as String?,
      activityAreas: (json['activityAreas'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      origin: json['origin'] == null
          ? null
          : OpportunitiesOrigin.fromJson(
              json['origin'] as Map<String, dynamic>),
      tools:
          (json['tools'] as List<dynamic>?)?.map((e) => e as String).toList(),
      numberOfActivePositionings: json['numberOfActivePositionings'] as int?,
      canShowContact: json['canShowContact'] as bool?,
      canShowCompany: json['canShowCompany'] as bool?,
    )..updateDate = BoondHelpers.parseDateTime(json['updateDate'] as String?);

Map<String, dynamic> _$OpportunitiesAttributesToJson(
        OpportunitiesAttributes instance) =>
    <String, dynamic>{
      'creationDate': instance.creationDate?.toIso8601String(),
      'updateDate': instance.updateDate?.toIso8601String(),
      'title': instance.title,
      'reference': instance.reference,
      'typeOf': instance.typeOf,
      'mode': instance.mode,
      'state': instance.state,
      'place': instance.place,
      'isVisible': instance.isVisible,
      'startDate': instance.startDate,
      'closingDate': instance.closingDate,
      'answerDate': instance.answerDate,
      'duration': instance.duration,
      'currency': instance.currency,
      'exchangeRate': instance.exchangeRate,
      'currencyAgency': instance.currencyAgency,
      'exchangeRateAgency': instance.exchangeRateAgency,
      'turnoverWeightedExcludingTax': instance.turnoverWeightedExcludingTax,
      'estimatesExcludingTax': instance.estimatesExcludingTax,
      'turnoverEstimatedExcludingTax': instance.turnoverEstimatedExcludingTax,
      'expertiseArea': instance.expertiseArea,
      'activityAreas': instance.activityAreas,
      'origin': instance.origin,
      'tools': instance.tools,
      'numberOfActivePositionings': instance.numberOfActivePositionings,
      'canShowContact': instance.canShowContact,
      'canShowCompany': instance.canShowCompany,
    };

OpportunitiesOrigin _$OpportunitiesOriginFromJson(Map<String, dynamic> json) =>
    OpportunitiesOrigin(
      detail: json['detail'] as String?,
      typeOf: json['typeOf'] as int,
    );

Map<String, dynamic> _$OpportunitiesOriginToJson(
        OpportunitiesOrigin instance) =>
    <String, dynamic>{
      'detail': instance.detail,
      'typeOf': instance.typeOf,
    };
