// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactsGet _$ContactsGetFromJson(Map<String, dynamic> json) => ContactsGet(
      meta: BoondMeta.fromJson(json['meta'] as Map<String, dynamic>),
      data: ContactsGetData.fromJson(json['data'] as Map<String, dynamic>),
      included: (json['included'] as List<dynamic>)
          .map((e) => BoondIncluded.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ContactsGetToJson(ContactsGet instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
      'included': instance.included,
    };

ContactsGetData _$ContactsGetDataFromJson(Map<String, dynamic> json) =>
    ContactsGetData(
      id: json['id'] as String?,
      type: json['type'] as String,
      attributes: ContactsAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
      relationships: BoondRelationships.fromJson(
          json['relationships'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContactsGetDataToJson(ContactsGetData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

ContactsInfo _$ContactsInfoFromJson(Map<String, dynamic> json) => ContactsInfo(
      meta: BoondMeta.fromJson(json['meta'] as Map<String, dynamic>),
      data: ContactsInfoData.fromJson(json['data'] as Map<String, dynamic>),
      included: (json['included'] as List<dynamic>)
          .map((e) => BoondIncluded.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ContactsInfoToJson(ContactsInfo instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
      'included': instance.included,
    };

ContactsInfoData _$ContactsInfoDataFromJson(Map<String, dynamic> json) =>
    ContactsInfoData(
      id: json['id'] as String?,
      type: json['type'] as String,
      attributes: ContactsAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
      relationships: BoondRelationships.fromJson(
          json['relationships'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContactsInfoDataToJson(ContactsInfoData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

ContactsSearch _$ContactsSearchFromJson(Map<String, dynamic> json) =>
    ContactsSearch(
      meta: BoondMeta.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => ContactsSearchData.fromJson(e as Map<String, dynamic>))
          .toList(),
      included: (json['included'] as List<dynamic>?)
          ?.map((e) => BoondIncluded.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ContactsSearchToJson(ContactsSearch instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
      'included': instance.included,
    };

ContactsSearchData _$ContactsSearchDataFromJson(Map<String, dynamic> json) =>
    ContactsSearchData(
      id: json['id'] as String?,
      type: json['type'] as String,
      attributes: ContactsAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
      relationships: json['relationships'] == null
          ? null
          : BoondRelationships.fromJson(
              json['relationships'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContactsSearchDataToJson(ContactsSearchData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

ContactsPost _$ContactsPostFromJson(Map<String, dynamic> json) => ContactsPost(
      data: ContactsPostData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContactsPostToJson(ContactsPost instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

ContactsPostData _$ContactsPostDataFromJson(Map<String, dynamic> json) =>
    ContactsPostData(
      attributes: ContactsAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
      type: json['type'] as String,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$ContactsPostDataToJson(ContactsPostData instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'attributes': instance.attributes,
    };

ContactsAttributes _$ContactsAttributesFromJson(Map<String, dynamic> json) =>
    ContactsAttributes(
      creationDate: BoondHelpers.parseDateTime(json['creationDate'] as String?),
      updateDate: BoondHelpers.parseDateTime(json['updateDate'] as String?),
      civility: json['civility'] as int?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      thumbnail: json['thumbnail'] as String?,
      state: json['state'] as int?,
      email1: json['email1'] as String?,
      email2: json['email2'] as String?,
      email3: json['email3'] as String?,
      phone1: json['phone1'] as String?,
      phone2: json['phone2'] as String?,
      fax: json['fax'] as String?,
      address: json['address'] as String?,
      postcode: json['postcode'] as String?,
      town: json['town'] as String?,
      country: json['country'] as String?,
      origin: json['origin'] == null
          ? null
          : ContactsOrigin.fromJson(json['origin'] as Map<String, dynamic>),
      activityAreas: (json['activityAreas'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      informationComments: json['informationComments'] as String?,
      tools:
          (json['tools'] as List<dynamic>?)?.map((e) => e as String).toList(),
      department: json['department'] as String?,
      function: json['function'] as String?,
      socialNetworks: (json['socialNetworks'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      canReadContact: json['canReadContact'] as bool?,
      canWriteContact: json['canWriteContact'] as bool?,
    );

Map<String, dynamic> _$ContactsAttributesToJson(ContactsAttributes instance) =>
    <String, dynamic>{
      'creationDate': instance.creationDate?.toIso8601String(),
      'updateDate': instance.updateDate?.toIso8601String(),
      'civility': instance.civility,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'thumbnail': instance.thumbnail,
      'state': instance.state,
      'email1': instance.email1,
      'email2': instance.email2,
      'email3': instance.email3,
      'phone1': instance.phone1,
      'phone2': instance.phone2,
      'fax': instance.fax,
      'address': instance.address,
      'postcode': instance.postcode,
      'town': instance.town,
      'country': instance.country,
      'origin': instance.origin,
      'activityAreas': instance.activityAreas,
      'informationComments': instance.informationComments,
      'tools': instance.tools,
      'department': instance.department,
      'function': instance.function,
      'socialNetworks': instance.socialNetworks,
      'canReadContact': instance.canReadContact,
      'canWriteContact': instance.canWriteContact,
    };

ContactsOrigin _$ContactsOriginFromJson(Map<String, dynamic> json) =>
    ContactsOrigin(
      typeOf: json['typeOf'] as int,
      detail: json['detail'] as String?,
    );

Map<String, dynamic> _$ContactsOriginToJson(ContactsOrigin instance) =>
    <String, dynamic>{
      'typeOf': instance.typeOf,
      'detail': instance.detail,
    };
