import 'package:equatable/equatable.dart';

class ProfileAddressEntity extends Equatable {
  const ProfileAddressEntity({
    this.id,
    this.title,
    this.latitude,
    this.longitude,
    this.street,
    this.house,
    this.building,
    this.entrance,
    this.floor,
    this.appartment,
    this.domofon,
    this.isPrivate = false,
    this.isDefault = false,
  });

  final int? id;
  final String? title;
  final double? latitude;
  final double? longitude;
  final String? street;
  final String? house;
  final String? building;
  final String? entrance;
  final String? floor;
  final String? appartment;
  final String? domofon;
  final bool isPrivate;
  final bool isDefault;

  @override
  List<Object?> get props => [
        id,
        title,
        latitude,
        longitude,
        street,
        house,
        building,
        entrance,
        floor,
        appartment,
        domofon,
        isPrivate,
        isDefault,
      ];
}
