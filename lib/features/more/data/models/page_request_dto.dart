import 'package:json_annotation/json_annotation.dart';

part 'page_request_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class PageRequestDto {
  PageRequestDto({
    required this.url,
  });

  final String url;

  factory PageRequestDto.fromJson(Map<String, dynamic> json) =>
      _$PageRequestDtoFromJson(json);

  Map<String, dynamic> toJson() {
    return _$PageRequestDtoToJson(this);
  }
}
