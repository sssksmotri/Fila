import 'package:json_annotation/json_annotation.dart';

import 'filter_tag_dto.dart';

part 'filter_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class FilterDto {
  FilterDto({
    this.tags = const [],
  });

  final List<FilterTagDto> tags;

  factory FilterDto.fromJson(Map<String, dynamic> json) =>
      _$FilterDtoFromJson(json);

  Map<String, dynamic> toJson() {
    return _$FilterDtoToJson(this);
  }
}
