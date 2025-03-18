import '../../../domain/entities/get_code_status_entity.dart';
import '../../models/code_sent_dto.dart';

abstract class SentCodeMapper {
  static CodeSentDto toModel(GetCodeStatusEntity model) {
    return CodeSentDto(
      message: model.message,
      expired: model.expired,
    );
  }

  static GetCodeStatusEntity toEntity(CodeSentDto model) {
    return GetCodeStatusEntity(
      message: model.message,
      expired: model.expired,
    );
  }
}
