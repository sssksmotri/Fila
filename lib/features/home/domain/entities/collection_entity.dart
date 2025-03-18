import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_entity.dart';

part 'collection_entity.freezed.dart';

@freezed
class CollectionEntity with _$CollectionEntity {
  const factory CollectionEntity({
    required int id,
    required String title,
    required String picture,
    List<ProductEntity>? products,
    required bool isCollection,
    String? color,
  }) = _CollectionEntity;
}
