import 'package:json_annotation/json_annotation.dart';

part 'profile_card_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class ProfileCardDto {
  ProfileCardDto({
    required this.name,
  });

  final String name;

  factory ProfileCardDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileCardDtoFromJson(json);
}
