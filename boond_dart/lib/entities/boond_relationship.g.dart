// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boond_relationship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoondRelationships _$BoondRelationshipsFromJson(Map<String, dynamic> json) =>
    BoondRelationships(
      mainManager: json['mainManager'] == null
          ? null
          : BoondRelation.fromJson(json['mainManager'] as Map<String, dynamic>),
      hrManager: json['hrManager'] == null
          ? null
          : BoondRelation.fromJson(json['hrManager'] as Map<String, dynamic>),
      agency: json['agency'] == null
          ? null
          : BoondRelation.fromJson(json['agency'] as Map<String, dynamic>),
      resource: json['resource'] == null
          ? null
          : BoondRelation.fromJson(json['resource'] as Map<String, dynamic>),
      resumes: json['resumes'] == null
          ? null
          : BoondResumes.fromJson(json['resumes'] as Map<String, dynamic>),
      company: json['company'] == null
          ? null
          : BoondRelation.fromJson(json['company'] as Map<String, dynamic>),
      dependsOn: json['dependsOn'] == null
          ? null
          : BoondRelation.fromJson(json['dependsOn'] as Map<String, dynamic>),
      positionning: json['positionning'] == null
          ? null
          : BoondRelation.fromJson(
              json['positionning'] as Map<String, dynamic>),
      delivery: json['delivery'] == null
          ? null
          : BoondRelation.fromJson(json['delivery'] as Map<String, dynamic>),
      flag: json['flag'] == null
          ? null
          : BoondRelation.fromJson(json['flag'] as Map<String, dynamic>),
      createdBy: json['createdBy'] == null
          ? null
          : BoondRelation.fromJson(json['createdBy'] as Map<String, dynamic>),
      influencers: json['influencers'] == null
          ? null
          : BoondInfluencers.fromJson(
              json['influencers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BoondRelationshipsToJson(BoondRelationships instance) =>
    <String, dynamic>{
      'mainManager': instance.mainManager,
      'hrManager': instance.hrManager,
      'agency': instance.agency,
      'resource': instance.resource,
      'resumes': instance.resumes,
      'company': instance.company,
      'dependsOn': instance.dependsOn,
      'positionning': instance.positionning,
      'delivery': instance.delivery,
      'flag': instance.flag,
      'createdBy': instance.createdBy,
      'influencers': instance.influencers,
    };

BoondRelation _$BoondRelationFromJson(Map<String, dynamic> json) =>
    BoondRelation(
      data: BoondRelationData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BoondRelationToJson(BoondRelation instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

BoondRelationData _$BoondRelationDataFromJson(Map<String, dynamic> json) =>
    BoondRelationData(
      id: json['id'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$BoondRelationDataToJson(BoondRelationData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };
