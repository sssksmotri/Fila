import 'package:equatable/equatable.dart';

class AddressCreateEntity extends Equatable {
  const AddressCreateEntity({
    required this.title,
    required this.street,
    this.zipcode,
    this.country,
    this.region,
    this.city,
    this.house,
    this.building,
    this.entrance,
    this.floor,
    this.appartment,
    this.kladrId,
    this.uid,
    this.domofon,
    this.latitude,
    this.longitude,
    this.cityId,
    this.comment,
  });

  final String title;
  final String street;
  final String? comment;
  final String? zipcode;
  final String? country;
  final String? region;
  final String? city;
  final String? house;
  final String? building;
  final String? entrance;
  final String? floor;
  final String? appartment;
  final String? kladrId;
  final String? uid;
  final String? domofon;
  final double? latitude;
  final double? longitude;
  final int? cityId;

  @override
  List<Object?> get props => [
        title,
        street,
        zipcode,
        country,
        region,
        city,
        house,
        building,
        entrance,
        floor,
        appartment,
        kladrId,
        uid,
        domofon,
        latitude,
        longitude,
        cityId,
        comment,
      ];
}
