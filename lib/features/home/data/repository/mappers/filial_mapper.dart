import '../../../../more/domain/entities/shop_entity.dart';
import '../../models/filial_dto.dart';

class FilialMapper {
  static ShopEntity toEntity(
    FilialDto model,
  ) {
    final List<String> workTime = [];
    model.rezhim!.forEach((k, v) => workTime.add('$k $v'));

    return ShopEntity(
      id: model.id,
      address: model.name,
      cityId: model.cityId!,
      lat: double.parse(model.coordinates.lat),
      lon: double.parse(model.coordinates.lon),
      openTime: model.rezhimToday,
      workTime: workTime,
      waitingTime: model.timeDelay,
      distance: model.distance,

      //[model.rezhim!.map((key, value) => '')],
    );
  }

  static List<ShopEntity> toEntities(
    List<FilialDto> models,
  ) {
    List<ShopEntity> entities = [];

    models.map((p) => entities.add(toEntity(p))).toList();

    return entities;
  }
}
