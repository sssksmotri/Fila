import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/city_entity.dart';

part 'user_address.freezed.dart';

@freezed
class UserAddress with _$UserAddress {
  const factory UserAddress({
    CityEntity? city,
    String? house,
    String? street,
    String? street2,
    String? flat,
    String? floor,
    String? entry,
    String? domofon,
    String? comment,
    double? lat,
    double? lon,
  }) = _UserAddress;
}
