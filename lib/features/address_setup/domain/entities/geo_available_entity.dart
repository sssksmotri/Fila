import 'package:equatable/equatable.dart';
import 'package:monobox/features/more/domain/entities/shop_entity.dart';

class GeoAvailableEntity extends Equatable {
  const GeoAvailableEntity({
    required this.status,
    this.message,
    this.filial,
  });

  final String status;
  final String? message;
  final ShopEntity? filial;

  @override
  List<Object?> get props => [
        status,
        message,
        filial,
      ];
}
