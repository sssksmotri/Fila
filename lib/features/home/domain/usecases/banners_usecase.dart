import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/banner_entity.dart';
import '../repository/banners_repository.dart';

class BannersUsecase implements UseCase<DataState<List<BannerEntity>>?, void> {
  final BannersRepository bannersRepository;

  BannersUsecase({required this.bannersRepository});

  @override
  Future<DataState<List<BannerEntity>>?> call({params}) {
    return bannersRepository.getBanners();
  }
}
