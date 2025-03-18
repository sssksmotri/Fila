part of 'basket_bloc.dart';

@immutable
abstract class BasketState extends Equatable {
  const BasketState();

  @override
  List<Object> get props => <Object>[];
}

class BasketLoading extends BasketState {
  @override
  List<Object> get props => <Object>[];
}

class BasketLoaded extends BasketState {
  final BasketEntity basket;

  const BasketLoaded({
    required this.basket,
  });

  @override
  List<Object> get props => <Object>[
        basket,
      ];
}

class BasketFailure extends BasketState {
  final String message;
  const BasketFailure({
    required this.message,
  });

  @override
  List<Object> get props => <Object>[
        message,
      ];
}
