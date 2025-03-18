import 'package:decimal/decimal.dart';
import 'package:equatable/equatable.dart';

class ModifierItemEntity extends Equatable {
  const ModifierItemEntity({
    required this.id,
    required this.title,
    this.price,
    required this.minQuantity,
    required this.maxQuantity,
    this.image,
    this.weight,
  });

  final int id;
  final String title;
  final Decimal? price;
  final int? minQuantity;
  final int? maxQuantity;
  final String? image;
  final String? weight;

  @override
  List<Object?> get props => [id];
}
