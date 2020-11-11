// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application-calendar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppDictCalendar _$AppDictCalendarFromJson(Map<String, dynamic> json) {
  return AppDictCalendar(
    id: json['id'] as String,
    iso: json['iso'] as String,
    value: json['value'] as String,
  );
}

Map<String, dynamic> _$AppDictCalendarToJson(AppDictCalendar instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('iso', instance.iso);
  writeNotNull('value', instance.value);
  return val;
}
