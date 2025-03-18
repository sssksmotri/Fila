import 'package:intl/intl.dart';

import '../../../domain/entities/user_entity.dart';
import '../../models/user_dto.dart';

class UserMapper {
  static UserDto toModel(
    UserEntity model,
  ) {
    return UserDto(
      name: model.name,
      email: model.email,
      phone: model.phone,
      birthdate: model.birthdate != null
          ? DateFormat('dd.MM.yyyy').format(model.birthdate!)
          : null,
    );
  }

  static UserEntity toEntity(
    UserDto model,
  ) {
    return UserEntity(
      name: model.name,
      email: model.email,
      phone: model.phone ?? '',
      birthdate: model.birthdate != null
          ? DateFormat('dd.MM.yyyy').parse(model.birthdate!)
          : null,
    );
  }
}
