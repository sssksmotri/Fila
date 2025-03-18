import 'package:equatable/equatable.dart';

import 'modifier_item_entity.dart';

class ModifierEntity extends Equatable {
  const ModifierEntity({
    required this.id,
    required this.title,
    this.type,
    this.weight,
    this.items = const [],
    required this.minQuantity,
    required this.maxQuantity,
    this.isHalfPizza = false,
  });

  final int id;
  final String title;
  final List<ModifierItemEntity> items;
  final String? type;
  final int? minQuantity;
  final int? maxQuantity;
  final String? weight;
  final bool isHalfPizza;

  @override
  List<Object?> get props => [id];
}
