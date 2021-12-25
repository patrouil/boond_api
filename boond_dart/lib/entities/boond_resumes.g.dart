// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boond_resumes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoondResumes _$BoondResumesFromJson(Map<String, dynamic> json) => BoondResumes(
      data: (json['data'] as List<dynamic>)
          .map((e) => BoondResumesData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BoondResumesToJson(BoondResumes instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

BoondResumesData _$BoondResumesDataFromJson(Map<String, dynamic> json) =>
    BoondResumesData(
      id: json['id'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$BoondResumesDataToJson(BoondResumesData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };
