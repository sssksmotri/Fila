import 'package:decimal/decimal.dart';
import 'package:equatable/equatable.dart';

import 'kbzhu_entity.dart';
import 'modifier_entity.dart';
import 'tag_entity.dart';

class ProductEntity extends Equatable {
  final int? id;
  final String name;
  final String? description;
  final String? image;
  final Decimal price;
  final String? unit;
  final int? val;
  final String? sku;
  final String? barcode;
  final List<TagEntity> tags;
  final List<ModifierEntity> modifiers;
  final List<KbzhuEntity> kbzhu;
  final int? weight;
  final String? weightText;
  final bool isCombo;
  final bool isHalfPizza;

  const ProductEntity({
    this.id,
    required this.name,
    this.description,
    this.image,
    required this.price,
    this.unit,
    this.val,
    this.sku,
    this.barcode,
    this.tags = const [],
    this.modifiers = const [],
    this.kbzhu = const [],
    this.weight,
    this.weightText,
    required this.isCombo,
    required this.isHalfPizza,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        image,
        price,
        unit,
        val,
        sku,
        barcode,
        tags,
        modifiers,
        kbzhu,
        weight,
        isCombo,
        isHalfPizza,
      ];
}
