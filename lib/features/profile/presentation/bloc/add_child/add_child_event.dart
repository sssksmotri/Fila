part of 'add_child_bloc.dart';

@freezed
class AddChildEvent with _$AddChildEvent {
  const factory AddChildEvent.add(AddChildRequestEntity addChildRequest) = _Add;
}
