import 'package:equatable/equatable.dart';
import 'package:monobox/features/home/domain/entities/product_entity.dart';

class GiftsScaleEntity extends Equatable {
  final String title;
  final String? price;
  final ProductEntity product;

  const GiftsScaleEntity({
    required this.title,
    this.price,
    required this.product,
  });

  @override
  List<Object?> get props => [
        title,
        price,
        product,
      ];
}
