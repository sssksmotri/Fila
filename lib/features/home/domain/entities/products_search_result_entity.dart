import 'package:equatable/equatable.dart';
import 'package:monobox/features/home/domain/entities/product_entity.dart';

class ProductsSearchResultEntity extends Equatable {
  const ProductsSearchResultEntity({
    this.products = const [],
  });

  final List<ProductEntity> products;

  @override
  List<Object?> get props => [products];
}
