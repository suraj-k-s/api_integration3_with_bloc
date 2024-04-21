// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_number_fact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetNumberFact _$GetNumberFactFromJson(Map<String, dynamic> json) =>
    GetNumberFact(
      text: json['text'] as String?,
      number: json['number'] as int?,
      found: json['found'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$GetNumberFactToJson(GetNumberFact instance) =>
    <String, dynamic>{
      'text': instance.text,
      'number': instance.number,
      'found': instance.found,
      'type': instance.type,
    };
