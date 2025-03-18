import 'package:json_annotation/json_annotation.dart';

import 'collection_dto.dart';

part 'collections_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class CollectionsDto {
  CollectionsDto({
    this.collections,
  });
  @JsonKey(name: 'data')
  final List<CollectionDto>? collections;

  factory CollectionsDto.fromJson(Map<String, dynamic> json) =>
      _$CollectionsDtoFromJson(json);
}
