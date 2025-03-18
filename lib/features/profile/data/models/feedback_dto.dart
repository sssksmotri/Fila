import 'package:json_annotation/json_annotation.dart';

part 'feedback_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class FeedbackDto {
  FeedbackDto({
    this.rate1,
    this.rate2,
    this.rate3,
    this.content,
  });

  final int? rate1;
  final int? rate2;
  final int? rate3;
  final String? content;

  factory FeedbackDto.fromJson(Map<String, dynamic> json) =>
      _$FeedbackDtoFromJson(json);

  Map<String, dynamic> toJson() {
    return _$FeedbackDtoToJson(this);
  }
}
