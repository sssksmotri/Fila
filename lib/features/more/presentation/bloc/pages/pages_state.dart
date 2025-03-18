part of 'pages_bloc.dart';

@freezed
class PagesState with _$PagesState {
  const factory PagesState.initial() = _Initial;
  const factory PagesState.loading() = _Loading;
  const factory PagesState.success(PageEntity page) = _Success;
  const factory PagesState.error(String message) = _ErrorState;
}
