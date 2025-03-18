import 'package:equatable/equatable.dart';
import 'package:monobox/features/home/domain/entities/product_entity.dart';

class CategoryEntity extends Equatable {
  final int id;
  final String title;
  final String? picture;
  final List<ProductEntity>? products;
  final bool isCollection;
  final String? color;

  const CategoryEntity({
    required this.id,
    required this.title,
    required this.isCollection,
    this.picture,
    this.products,
    this.color,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        isCollection,
        picture,
        color,
      ];
}
