import '../../../domain/entities/payment_method_entity.dart';
import '../../models/payment_method_dto.dart';
import '../../models/payment_methods_dto.dart';

class PaymentMapper {
  static PaymentMethodDto toModel(
    PaymentMethodEntity model,
  ) {
    return PaymentMethodDto(
      id: model.id,
      name: model.name,
      code: model.code,
    );
  }

  static List<PaymentMethodDto> toModels(
    List<PaymentMethodEntity> entities,
  ) {
    List<PaymentMethodDto> models = [];

    entities.map((p) => models.add(toModel(p))).toList();

    return models;
  }

  static PaymentMethodEntity toEntity(
    PaymentMethodDto model,
  ) {
    return PaymentMethodEntity(
      id: model.id,
      name: model.name,
      code: model.code ?? '',
    );
  }

  static List<PaymentMethodEntity> toEntities(
    PaymentMethodsDto models,
  ) {
    List<PaymentMethodEntity> entities = [];

    models.paymentMethods?.map((p) => entities.add(toEntity(p))).toList();

    return entities;
  }
}
