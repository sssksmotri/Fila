import '../../../../more/domain/entities/shop_entity.dart';
import '../../models/filial_dto.dart';

class FilialMapper {
  static ShopEntity toEntity(FilialDto model) {
    // Формируем список workTime из rezhim
    final List<String> workTime = model.rezhim?.map((rezhimMap) {
      final days = rezhimMap['days'] as String? ?? '';
      final time = rezhimMap['time'] as String? ?? '';
      return '$days $time';
    }).toList() ??
        [];

    return ShopEntity(
      id: model.id,
      address: model.name,
      cityId: model.cityId ?? 0,
      lat: model.coordinates.lat,
      lon: model.coordinates.lon,
      openTime: model.rezhimToday,
      workTime: workTime,
      waitingTime: model.timeDelay,
      distance: model.distance,
    );
  }

  static List<ShopEntity> toEntities(List<FilialDto> models) {
    return models.map((model) => toEntity(model)).toList();
  }
}