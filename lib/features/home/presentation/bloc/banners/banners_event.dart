part of 'banners_bloc.dart';

sealed class BannersEvent {
  const BannersEvent();
}

class GetBanners extends BannersEvent {
  const GetBanners();
}
