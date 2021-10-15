// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boond_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoondMeta _$BoondMetaFromJson(Map<String, dynamic> json) => BoondMeta(
      version: json['version'] as String,
      isLogged: json['isLogged'] as bool,
      language: json['language'] as String,
    );

Map<String, dynamic> _$BoondMetaToJson(BoondMeta instance) => <String, dynamic>{
      'version': instance.version,
      'isLogged': instance.isLogged,
      'language': instance.language,
    };
