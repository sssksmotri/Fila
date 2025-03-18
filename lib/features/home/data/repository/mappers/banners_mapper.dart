import '../../../domain/entities/banner_entity.dart';
import '../../models/banner_dto.dart';

class BannersMapper {
  static BannerEntity toBannerEntity(
    BannerDto banner,
  ) {
    return BannerEntity(
      id: banner.id,
      title: banner.title,
      image: banner.picture,
      url: banner.url,
    );
  }

  static List<BannerEntity> toBannersEntity(
    List<BannerDto> banners,
  ) {
    List<BannerEntity> bannersEntity = [];

    banners.map((b) => bannersEntity.add(toBannerEntity(b))).toList();

    return bannersEntity;
  }
}
