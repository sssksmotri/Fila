import 'package:json_annotation/json_annotation.dart';

import 'basket_modifire_dto.dart';

part 'basket_info_request_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class BasketInfoRequestDto {
  BasketInfoRequestDto({
    required this.id,
    required this.qnt,
    this.modifiers = const [],
  });

  final int id;
  final int qnt;
  final List<BasketModifireDto>? modifiers;

  factory BasketInfoRequestDto.fromJson(Map<String, dynamic> json) => _$BasketInfoRequestDtoFromJson(json);

  Map<String, dynamic> toJson() {
    return _$BasketInfoRequestDtoToJson(this);
  }

  @override
  String toString() {
    return "(id: $id, qnt: $qnt)";
  }
}
