import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/basket_entity.dart';
import '../bloc/basket/basket_bloc.dart';
import 'basket_item.dart';

class BasketOffers extends StatelessWidget {
  const BasketOffers({super.key});

  @override
  Widget build(BuildContext context) {
    BasketBloc basketBloc = context.watch<BasketBloc>();

    final BasketEntity basket = (basketBloc.state as BasketLoaded).basket;
    return Column(
      children: [
        ...basket.offers.map(
          (offer) => Column(
            children: [
              BasketItem(
                offer: offer,
                onInc: () {
                  basketBloc.add(AddQtyOffer(offer, 1));
                },
                onDec: () {
                  if (offer.quantity! > 0) {
                    basketBloc.add(AddQtyOffer(offer, -1));
                  }
                },
                onDelete: () {
                  basketBloc.add(RemoveOffer(offer));
                },
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
