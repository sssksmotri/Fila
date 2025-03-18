import 'package:equatable/equatable.dart';

import '../../../home/domain/entities/product_entity.dart';

class UpsaleEntity extends Equatable {
  const UpsaleEntity({
    required this.title,
    required this.products,
  });

  final String title;
  final List<ProductEntity> products;

  @override
  List<Object?> get props => [
        title,
        products,
      ];
}
