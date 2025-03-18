import 'package:json_annotation/json_annotation.dart';

part 'filter_tag_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class FilterTagDto {
  FilterTagDto({
    required this.id,
  });

  final int id;

  factory FilterTagDto.fromJson(Map<String, dynamic> json) =>
      _$FilterTagDtoFromJson(json);

  Map<String, dynamic> toJson() {
    return _$FilterTagDtoToJson(this);
  }
}
