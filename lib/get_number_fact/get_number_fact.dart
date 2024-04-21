import 'package:json_annotation/json_annotation.dart';

part 'get_number_fact.g.dart';

@JsonSerializable()
class GetNumberFact {
  @JsonKey(name: 'text')
  String? text;
   @JsonKey(name: 'number')
  int? number;
   @JsonKey(name: 'found')
  bool? found;
   @JsonKey(name: 'type')
  String? type;

  GetNumberFact({this.text, this.number, this.found, this.type});

  factory GetNumberFact.fromJson(Map<String, dynamic> json) {
    return _$GetNumberFactFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetNumberFactToJson(this);
}
