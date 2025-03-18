import 'package:decimal/decimal.dart';
import 'package:monobox/features/home/data/repository/mappers/tags_mapper.dart';

import '../../../domain/entities/kbzhu_entity.dart';
import '../../../domain/entities/product_entity.dart';
import '../../models/product_dto.dart';
import 'modifiers_mapper.dart';

class ProductsMapper {
  static ProductEntity toProductEntity(
    ProductDto product,
  ) {
    return ProductEntity(
      id: product.id,
      name: product.name,
      image: product.picture,
      price: Decimal.fromInt(product.price ?? 0),
      description: product.description,
      tags: TagsMapper.toEntities(product.tags),
      modifiers: ModifiersMapper.toEntities(product.modifiers),
      kbzhu: [...product.kbzhu.map((k) => KbzhuEntity(text: k.text))],
      weight: product.weight,
      weightText: product.weightText,
      isCombo: product.isCombo,
      isHalfPizza: product.isHalfPizza,
    );
  }

  static List<ProductEntity> toProductsEntity(
    List<ProductDto> products,
  ) {
    List<ProductEntity> productsEntity = [];

    products.map((p) => productsEntity.add(toProductEntity(p))).toList();

    return productsEntity;
  }

  static ProductDto toProductModel(
    ProductEntity product,
  ) {
    return ProductDto(
      id: product.id ?? 0,
      name: product.name,
      picture: product.image,
      price: int.parse(product.price.toString()),
      description: product.description,
      tags: TagsMapper.toModels(product.tags),
      modifiers: ModifiersMapper.toModels(product.modifiers),
      isCombo: product.isCombo,
      isHalfPizza: product.isHalfPizza,
    );
  }

  static List<ProductDto> toProductsModel(
    List<ProductEntity> products,
  ) {
    List<ProductDto> productsEntity = [];

    products.map((p) => productsEntity.add(toProductModel(p))).toList();

    return productsEntity;
  }
}
