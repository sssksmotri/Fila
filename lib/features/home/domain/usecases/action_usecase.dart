import 'package:monobox/features/home/domain/entities/action_entity.dart';

import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../repository/banners_repository.dart';

class ActionUsecase implements UseCase<DataState<ActionEntity>, int?> {
  final BannersRepository bannersRepository;

  ActionUsecase({required this.bannersRepository});

  @override
  Future<DataState<ActionEntity>> call({params}) {
    return bannersRepository.getAction(params!);
  }
}
