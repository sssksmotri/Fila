import 'package:intl/intl.dart';

import '../../../domain/entities/profile_child_entity.dart';
import '../../models/profile_child_dto.dart';

class ProfileChildMapper {
  static ProfileChildDto toModel(
    ProfileChildEntity model,
  ) {
    return ProfileChildDto(
      id: model.id,
      name: model.name,
      birthdate: model.birthdate != null
          ? DateFormat('dd.MM.yyyy').format(model.birthdate!)
          : null,
    );
  }

  static ProfileChildEntity toEntity(
    ProfileChildDto model,
  ) {
    return ProfileChildEntity(
      id: model.id ?? 0,
      name: model.name,
      birthdate: model.birthdate != null
          ? DateFormat('dd.MM.yyyy').parse(model.birthdate!)
          : null,
    );
  }
}
