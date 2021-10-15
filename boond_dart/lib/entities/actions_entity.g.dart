// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actions_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActionsGet _$ActionsGetFromJson(Map<String, dynamic> json) => ActionsGet(
      meta: BoondMeta.fromJson(json['meta'] as Map<String, dynamic>),
      data: ActionsGetData.fromJson(json['data'] as Map<String, dynamic>),
      included: (json['included'] as List<dynamic>)
          .map((e) => BoondIncluded.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ActionsGetToJson(ActionsGet instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
      'included': instance.included,
    };

ActionsGetData _$ActionsGetDataFromJson(Map<String, dynamic> json) =>
    ActionsGetData(
      id: json['id'] as String?,
      type: json['type'] as String,
      attributes: ActionsAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
      relationships: BoondRelationships.fromJson(
          json['relationships'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActionsGetDataToJson(ActionsGetData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

ActionsSearch _$ActionsSearchFromJson(Map<String, dynamic> json) =>
    ActionsSearch(
      meta: BoondMeta.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => ActionSearchData.fromJson(e as Map<String, dynamic>))
          .toList(),
      included: (json['included'] as List<dynamic>)
          .map((e) => BoondIncluded.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ActionsSearchToJson(ActionsSearch instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
      'included': instance.included,
    };

ActionSearchData _$ActionSearchDataFromJson(Map<String, dynamic> json) =>
    ActionSearchData(
      id: json['id'] as String,
      type: json['type'] as String,
      attributes: json['attributes'] == null
          ? null
          : ActionsAttributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
      relationships: json['relationships'] == null
          ? null
          : BoondRelationships.fromJson(
              json['relationships'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActionSearchDataToJson(ActionSearchData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

ActionsPost _$ActionsPostFromJson(Map<String, dynamic> json) => ActionsPost(
      data: ActionsPostData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActionsPostToJson(ActionsPost instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

ActionsPostData _$ActionsPostDataFromJson(Map<String, dynamic> json) =>
    ActionsPostData(
      type: json['type'] as String,
      id: json['id'] as String?,
      attributes: ActionsAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
      relationships: BoondRelationships.fromJson(
          json['relationships'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActionsPostDataToJson(ActionsPostData instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

ActionsAttributes _$ActionsAttributesFromJson(Map<String, dynamic> json) =>
    ActionsAttributes(
      startDate: BoondHelpers.parseDateTime(json['startDate'] as String?),
      creationDate: BoondHelpers.parseDateTime(json['creationDate'] as String?),
      endDate: BoondHelpers.parseDateTime(json['endDate'] as String?),
      startTimezone: json['startTimezone'] as String?,
      endTimezone: json['endTimezone'] as String?,
      typeOf: json['typeOf'] as int?,
      status: json['status'] as String?,
      state: json['state'] as String?,
      text: json['text'] as String?,
      location: json['location'] as String?,
      title: json['title'] as String?,
      guests:
          (json['guests'] as List<dynamic>?)?.map((e) => e as String).toList(),
      synchronizeWithAdvancedAppCalendar:
          json['synchronizeWithAdvancedAppCalendar'] as bool?,
      isNotification: json['isNotification'] as bool?,
      numberOfFiles: json['numberOfFiles'] as int?,
      canReadAction: json['canReadAction'] as bool?,
      canWriteAction: json['canWriteAction'] as bool?,
    );

Map<String, dynamic> _$ActionsAttributesToJson(ActionsAttributes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('startDate', instance.startDate?.toIso8601String());
  writeNotNull('creationDate', instance.creationDate?.toIso8601String());
  writeNotNull('endDate', instance.endDate?.toIso8601String());
  writeNotNull('startTimezone', instance.startTimezone);
  writeNotNull('endTimezone', instance.endTimezone);
  writeNotNull('typeOf', instance.typeOf);
  writeNotNull('status', instance.status);
  writeNotNull('state', instance.state);
  writeNotNull('text', instance.text);
  writeNotNull('location', instance.location);
  writeNotNull('title', instance.title);
  writeNotNull('guests', instance.guests);
  writeNotNull('synchronizeWithAdvancedAppCalendar',
      instance.synchronizeWithAdvancedAppCalendar);
  writeNotNull('isNotification', instance.isNotification);
  writeNotNull('numberOfFiles', instance.numberOfFiles);
  writeNotNull('canReadAction', instance.canReadAction);
  writeNotNull('canWriteAction', instance.canWriteAction);
  return val;
}
