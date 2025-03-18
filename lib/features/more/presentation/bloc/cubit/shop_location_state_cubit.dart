import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:monobox/features/address_setup/domain/entities/geo_suggestion_entity.dart';
import 'package:monobox/features/home/domain/entities/city_entity.dart';

import '../../../domain/entities/shop_entity.dart';

part 'shop_location_state_state.dart';
part 'shop_location_state_cubit.freezed.dart';

class ShopLocationStateCubit extends Cubit<ShopLocationStateState> {
  ShopLocationStateCubit() : super(const ShopLocationStateState());

  void changeViewMode(String mode) {
    emit(state.copyWith(
      showMode: mode,
    ));
  }

  void showShopMap(ShopEntity shop) {
    emit(state.copyWith(
      showShopMap: shop,
    ));
  }

  void setGeoSuggestion(GeoSuggestionEntity geoSuggestion) {
    emit(state.copyWith(
      geoSuggestion: geoSuggestion,
    ));
  }

  void setCity(CityEntity city) {
    emit(state.copyWith(
      city: city,
    ));
  }

  void setShops(List<ShopEntity> shops) {
    emit(state.copyWith(
      shops: shops,
    ));
  }
}
