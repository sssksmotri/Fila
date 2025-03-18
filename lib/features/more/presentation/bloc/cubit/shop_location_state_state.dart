part of 'shop_location_state_cubit.dart';

@freezed
class ShopLocationStateState with _$ShopLocationStateState {
  const factory ShopLocationStateState({
    @Default('list') String showMode,
    ShopEntity? showShopMap,
    GeoSuggestionEntity? geoSuggestion,
    CityEntity? city,
    @Default([]) List<ShopEntity> shops,
  }) = _ShopLocationStateState;
}
