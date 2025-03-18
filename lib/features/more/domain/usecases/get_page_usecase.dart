import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/page_entity.dart';
import '../repository/pages_repository.dart';

class GetPageUsecase implements UseCase<DataState<PageEntity>, String?> {
  final PagesRepository repository;

  GetPageUsecase({required this.repository});

  @override
  Future<DataState<PageEntity>> call({params}) {
    return repository.getPage(params!);
  }
}
