import '../../../../core/resources/data_state.dart';
import '../entities/action_entity.dart';
import '../entities/banner_entity.dart';

abstract class BannersRepository {
  Future<DataState<List<BannerEntity>>?> getBanners();
  Future<DataState<ActionEntity>> getAction(int id);
}
