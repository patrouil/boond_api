// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_currentuser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppCurrentUserGet _$AppCurrentUserGetFromJson(Map<String, dynamic> json) =>
    AppCurrentUserGet(
      meta: BoondMeta.fromJson(json['meta'] as Map<String, dynamic>),
      data:
          AppCurrentUserGetData.fromJson(json['data'] as Map<String, dynamic>),
      included: (json['included'] as List<dynamic>)
          .map((e) => BoondIncluded.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AppCurrentUserGetToJson(AppCurrentUserGet instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
      'included': instance.included,
    };

AppCurrentUserGetData _$AppCurrentUserGetDataFromJson(
        Map<String, dynamic> json) =>
    AppCurrentUserGetData(
      id: json['id'] as String?,
      type: json['type'] as String,
      attributes: AppCurrentUserAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
      relationships: BoondRelationships.fromJson(
          json['relationships'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppCurrentUserGetDataToJson(
        AppCurrentUserGetData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

AppCurrentUserAttributes _$AppCurrentUserAttributesFromJson(
        Map<String, dynamic> json) =>
    AppCurrentUserAttributes(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email1: json['email1'] as String?,
      phone1: json['phone1'] as String?,
      language: json['language'] as String?,
      login: json['login'] as String?,
      level: json['level'] as String?,
      userToken: json['userToken'] as String?,
      modules: (json['modules'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ),
      navigationBar: json['navigationBar'] as List<dynamic>?,
      rights: json['rights'] == null
          ? null
          : UsersRights.fromJson(json['rights'] as Map<String, dynamic>),
      lastLogInDate: json['lastLogInDate'] as String?,
      homepage: json['homepage'] as String?,
      nodeSignedRequest: json['nodeSignedRequest'] as String?,
      nodeUrl: json['nodeUrl'] as String?,
      timezone: json['timezone'] as String?,
      narrowPerimeter: json['narrowPerimeter'] as bool?,
      defaultSearchSaving: json['defaultSearchSaving'] as bool?,
    );

Map<String, dynamic> _$AppCurrentUserAttributesToJson(
    AppCurrentUserAttributes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('firstName', instance.firstName);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('email1', instance.email1);
  writeNotNull('phone1', instance.phone1);
  writeNotNull('language', instance.language);
  writeNotNull('login', instance.login);
  writeNotNull('level', instance.level);
  writeNotNull('userToken', instance.userToken);
  writeNotNull('modules', instance.modules);
  writeNotNull('navigationBar', instance.navigationBar);
  writeNotNull('rights', instance.rights);
  writeNotNull('lastLogInDate', instance.lastLogInDate);
  writeNotNull('homepage', instance.homepage);
  writeNotNull('nodeSignedRequest', instance.nodeSignedRequest);
  writeNotNull('nodeUrl', instance.nodeUrl);
  writeNotNull('timezone', instance.timezone);
  writeNotNull('narrowPerimeter', instance.narrowPerimeter);
  writeNotNull('defaultSearchSaving', instance.defaultSearchSaving);
  return val;
}
