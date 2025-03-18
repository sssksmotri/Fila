import '../../../../core/resources/data_state.dart';
import '../entities/page_entity.dart';

abstract class PagesRepository {
  Future<DataState<PageEntity>> getPage(String url);
}
