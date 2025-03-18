import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monobox/config/routes/app_router.dart';
import 'package:monobox/config/themes/colors.dart';
import 'package:monobox/config/themes/styles.dart';
import 'package:monobox/features/basket/presentation/bloc/basket/basket_bloc.dart';
import 'package:monobox/features/basket/presentation/bloc/basket_info/basket_info_bloc.dart';
import 'package:monobox/features/order/presentation/bloc/promocode/promocode_bloc.dart';
import 'package:monobox/injection_container.dart';

class ItogoBottom extends StatelessWidget {
  const ItogoBottom({super.key});

  @override
  Widget build(BuildContext context) {
    BasketBloc basketBloc = context.watch<BasketBloc>();
    //BasketInfoBloc basketInfoBloc = context.watch<BasketInfoBloc>();

    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<BasketInfoBloc, BasketInfoState>(
                builder: (context, state) {
                  return Text(
                    state.maybeWhen(
                      orElse: () => '...',
                      success: (basketInfo) => '${basketInfo.totalInfo.total} ₽',
                    ),
                    style: AppStyles.bodyBold.copyWith(
                      color: AppColors.black,
                    ),
                  );
                },
              ),
              // Text(
              //   '${basketBloc.subtotal} ₽',
              //   style: AppStyles.bodyBold.copyWith(
              //     color: AppColors.black,
              //   ),
              // ),
              const SizedBox(
                height: 4,
              ),
              Text(
                '',
                style: AppStyles.caption1,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: SizedBox(
            height: 52,
            child: BlocBuilder<BasketInfoBloc, BasketInfoState>(
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: state.maybeWhen(
                    orElse: () => null,
                    success: (basketInfo) => () {
                      getIt<PromocodeBloc>().state.maybeWhen(
                            error: (error) => getIt<PromocodeBloc>().emit(const PromocodeState.initial()),
                            orElse: () => null,
                          );
                      context.navigateTo(CreateOrderRoute(
                        basket: (basketBloc.state as BasketLoaded).basket,
                      ));
                    },
                  ),
                  child: Text(
                    state.maybeWhen(
                      orElse: () => 'Оформить',
                      success: (basketInfo) => basketInfo.warnings.isEmpty ? 'Оформить' : basketInfo.warnings[0],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
