part of 'pages_bloc.dart';

@freezed
class PagesEvent with _$PagesEvent {
  const factory PagesEvent.getPage(String url) = _GetPage;
}
