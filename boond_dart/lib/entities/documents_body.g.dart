// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documents_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentsGet _$DocumentsGetFromJson(Map<String, dynamic> json) => DocumentsGet(
      meta: BoondMeta.fromJson(json['meta'] as Map<String, dynamic>),
      data: DocumentsGetData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DocumentsGetToJson(DocumentsGet instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };

DocumentsGetData _$DocumentsGetDataFromJson(Map<String, dynamic> json) =>
    DocumentsGetData(
      id: json['id'] as String,
      type: json['type'] as String,
      attributes: json['attributes'] == null
          ? null
          : DocumentsAttributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DocumentsGetDataToJson(DocumentsGetData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes,
    };

DocumentsAttributes _$DocumentsAttributesFromJson(Map<String, dynamic> json) =>
    DocumentsAttributes(
      name: json['name'] as String,
    );

Map<String, dynamic> _$DocumentsAttributesToJson(
        DocumentsAttributes instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
