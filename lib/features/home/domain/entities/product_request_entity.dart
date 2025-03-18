import 'package:equatable/equatable.dart';

import 'filter_entity.dart';

class ProductRequestEntity extends Equatable {
  final String? search;
  final FilterEntity? filters;

  const ProductRequestEntity({
    this.search,
    this.filters,
  });

  @override
  List<Object?> get props => [
        search,
        filters,
      ];
}
