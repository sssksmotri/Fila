import 'package:json_annotation/json_annotation.dart';

part 'filial_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class FilialDto {
  FilialDto({
    required this.id,
    this.cityId,
    required this.name,
    required this.coordinates,
    this.timeDelay,
    this.distance,
    this.rezhim,
    this.rezhimToday,
  });
  final int id;
  final int? cityId;
  @JsonKey(name: 'title')
  final String name;
  final String? timeDelay;
  final String? distance;
  @JsonKey(name: 'coords')
  final FilialCoordinatesDto coordinates;
  final Map<String, dynamic>? rezhim;
  final String? rezhimToday;

  factory FilialDto.fromJson(Map<String, dynamic> json) => _$FilialDtoFromJson(json);
}

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class FilialCoordinatesDto {
  FilialCoordinatesDto({
    required this.lat,
    required this.lon,
  });

  @JsonKey(name: 'latitude')
  final String lat;
  @JsonKey(name: 'longitude')
  final String lon;

  factory FilialCoordinatesDto.fromJson(Map<String, dynamic> json) => _$FilialCoordinatesDtoFromJson(json);
}
