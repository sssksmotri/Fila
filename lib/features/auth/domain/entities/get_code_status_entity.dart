import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_code_status_entity.freezed.dart';

@freezed
class GetCodeStatusEntity with _$GetCodeStatusEntity {
  const factory GetCodeStatusEntity({
    required String message,
    int? expired,
  }) = _GetCodeStatusEntity;
}
