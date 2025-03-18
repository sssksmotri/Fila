import 'package:equatable/equatable.dart';

import 'profile_address_entity.dart';
import 'profile_bonus_entity.dart';
import 'profile_card_entity.dart';
import 'profile_child_entity.dart';
import 'user_entity.dart';

class ProfileEntity extends Equatable {
  const ProfileEntity({
    required this.user,
    required this.bonus,
    this.addresses = const [],
    this.children = const [],
    this.cards = const [],
  });

  final UserEntity user;
  final List<ProfileAddressEntity> addresses;
  final List<ProfileChildEntity> children;
  final List<ProfileCardEntity> cards;
  final ProfileBonusEntity? bonus;

  @override
  List<Object?> get props => [
        user,
        addresses,
        children,
        cards,
        bonus,
      ];
}
