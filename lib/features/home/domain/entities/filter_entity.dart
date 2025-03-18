import 'package:equatable/equatable.dart';

import 'filter_tag_entity.dart';

class FilterEntity extends Equatable {
  final List<FilterTagEntity> tags;

  const FilterEntity({
    this.tags = const [],
  });

  @override
  List<Object?> get props => [
        tags,
      ];
}
