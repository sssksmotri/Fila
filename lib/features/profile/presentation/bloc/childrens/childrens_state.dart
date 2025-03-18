part of 'childrens_bloc.dart';

@freezed
class ChildrensState with _$ChildrensState {
  const factory ChildrensState.initial() = _Initial;
  const factory ChildrensState.loading() = _Loading;
  const factory ChildrensState.done(List<ChildEntity> childrens) = _Done;
  const factory ChildrensState.error(Error error) = _Error;
}
