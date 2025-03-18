import 'package:json_annotation/json_annotation.dart';

part 'page_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class PageDto {
  PageDto({
    required this.title,
    required this.content,
  });
  final String title;
  final String content;

  factory PageDto.fromJson(Map<String, dynamic> json) =>
      _$PageDtoFromJson(json);
}
