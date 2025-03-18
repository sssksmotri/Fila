part of 'banners_bloc.dart';

sealed class BannersState extends Equatable {
  const BannersState({this.banners});

  final List<BannerEntity>? banners;

  @override
  List<Object> get props => [banners!];
}

final class BannersInitial extends BannersState {}

class BannersLoading extends BannersState {
  const BannersLoading();
}

class BannersDone extends BannersState {
  const BannersDone(List<BannerEntity> banners)
      : super(
          banners: banners,
        );
}

class BannersError extends BannersState {
  const BannersError();
}
