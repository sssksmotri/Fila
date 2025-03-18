import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monobox/config/themes/colors.dart';
import 'package:monobox/config/themes/styles.dart';
import 'package:monobox/features/home/presentation/bloc/gifts_scale/gifts_scale_bloc.dart';
import 'package:monobox/features/home/presentation/widgets/bottom_sheet_container.dart';
import 'package:monobox/features/home/presentation/widgets/gift_item.dart';
import 'package:monobox/injection_container.dart';

class GiftSelector extends StatelessWidget {
  const GiftSelector({
    super.key,
    required this.bottomSheetKey,
  });

  final GlobalKey bottomSheetKey;

  @override
  Widget build(BuildContext context) {
    //getIt<GiftsScaleBloc>().add(const GiftsScaleEvent.getGiftsScale());
    // getIt<GiftsBloc>().add(
    //   GiftsEvent.getGifts(
    //     OrderCreateEntity(
    //       deliveryId: 1,
    //       paymentId: 1,
    //       orderedPositions: (getIt<BasketBloc>().state as BasketLoaded)
    //           .basket
    //           .offers
    //           .map((offer) => OrderedPositionEntity(
    //                 productId: offer.product.id!,
    //                 quantity: offer.quantity!,
    //               ))
    //           .toList(),
    //     ),
    //   ),
    // );

    return SingleChildScrollView(
      child: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).copyWith().size.height * 0.75,
        ),
        key: bottomSheetKey,
        child: Column(
          children: [
            const Text(
              'Title',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 300.0),
            Container(
              // Replace this Container with your dynamic content
              child: const Text(
                'Content',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
    return BlocProvider.value(
      value: getIt<GiftsScaleBloc>(),
      child: BottomSheetContainer(
        header: Text(
          'Подарки!',
          style: AppStyles.title3,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Text(
                'Получайте подарочные блюда в зависимости от суммы заказа. Только в приложении!',
                style: AppStyles.subhead.copyWith(
                  color: AppColors.darkGray,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Expanded(
                child: BlocBuilder<GiftsScaleBloc, GiftsScaleState>(
                  builder: (context, state) {
                    return state.maybeMap(
                      success: (value) {
                        return SingleChildScrollView(
                          child: Column(
                            children: [
                              ...value.giftsScale.map(
                                (giftsScale) => Padding(
                                  padding: const EdgeInsets.only(bottom: 16),
                                  child: GiftItem(
                                    product: giftsScale.product,
                                    title: giftsScale.title,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      orElse: () => Container(),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 52,
                child: ElevatedButton(
                  onPressed: () {
                    AutoRouter.of(context).pop();
                  },
                  child: Center(
                    child: Text(
                      'Хорошо',
                      style: AppStyles.headline.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
