import 'package:decimal/decimal.dart';
import 'package:equatable/equatable.dart';

class ProductOptionEntity extends Equatable {
  final int? id;
  final String name;
  final String? description;
  final String? image;
  final Decimal? price;
  final String? unit;

  const ProductOptionEntity({
    this.id,
    required this.name,
    this.description,
    this.image,
    required this.price,
    this.unit,
  });

  ProductOptionEntity copyWith({
    int? id,
    String? name,
    String? description,
    String? image,
    Decimal? price,
    String? unit,
  }) {
    return ProductOptionEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      image: image ?? this.image,
      price: price ?? this.price,
      unit: unit ?? this.unit,
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        image,
        price,
        unit,
      ];
}
