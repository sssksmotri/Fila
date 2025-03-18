part of 'loyalty_bloc.dart';

@freezed
class LoyaltyState with _$LoyaltyState {
  const factory LoyaltyState.initial() = _Initial;
  const factory LoyaltyState.loading() = _Loading;
  const factory LoyaltyState.success(List<LoyaltyEntity> loyalties) = _Success;
  const factory LoyaltyState.error(Error error) = _Error;
}
