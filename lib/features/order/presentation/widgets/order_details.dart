import 'dart:io';

import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';

import '../../../../config/routes/app_router.dart';
import '../../../../config/themes/colors.dart';
import '../../../../config/themes/styles.dart';
import '../../../../core/widgets/input_text.dart';
import '../../../../core/widgets/rounded_container.dart';
import '../../../basket/domain/entities/basket_offer_entity.dart';
import '../../../basket/presentation/bloc/basket/basket_bloc.dart';
import '../../../home/domain/entities/product_entity.dart';
import '../../../home/presentation/bloc/settings/settings_bloc.dart';
import '../../../profile/presentation/widgets/order_badge.dart';
import '../../domain/entities/order_details_entity.dart';
import '../bloc/order/order_bloc.dart';
import 'order_time_line.dart';
import 'product_item.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({
    super.key,
    required this.order,
  });

  final OrderDetailsEntity order;

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  late bool isCanceled;

  @override
  void initState() {
    isCanceled = widget.order.status.toLowerCase() == 'отменен';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Информация о доставке',
              style: AppStyles.title3,
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          RoundedContainer(
            header: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Доставим к ~13:15',
                  style: AppStyles.headline,
                ),
                OrderBadge(
                  text: isCanceled ? 'Отменен' : widget.order.status,
                  status: OrderStatus.delivered,
                ),
              ],
            ),
            child: Column(
              children: [
                OrderTimeLine(
                  orderTimeLineItems: [
                    ...widget.order.statuses.map(
                      (status) {
                        final date = DateFormat('yyyy-MM-dd HH:mm:ss').parse(status.date);
                        return OrderTimeLineItem(
                          time: DateFormat("hh:mm").format(date),
                          title: status.title ?? '',
                          subTitle: status.subtitle ?? '',
                          isInactive: !status.active,
                        );
                      },
                    ),
                    // OrderTimeLineItem(
                    //   time: '12:10',
                    //   title: 'Оформлен',
                    //   subTitle: 'Подтверждён звонком',
                    // ),
                    // OrderTimeLineItem(
                    //   time: '12:11',
                    //   title: 'Оплачен',
                    //   subTitle: 'Картой',
                    // ),
                    // OrderTimeLineItem(
                    //   time: '12:14',
                    //   title: 'Поступил на кухню',
                    //   subTitle: 'Начинаем готовить',
                    // ),
                    // OrderTimeLineItem(
                    //   time: '12:54',
                    //   title: 'Заказ готов',
                    //   subTitle: 'Отправляем курьера',
                    // ),
                    // OrderTimeLineItem(
                    //   time: '12:57',
                    //   title: 'Курьер в пути',
                    //   subTitle: 'Ожидайте',
                    // ),
                    // OrderTimeLineItem(
                    //   time: '13:15',
                    //   title: 'Заказ доставлен',
                    //   isInactive: true,
                    // ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 56,
                  child: BlocBuilder<SettingsBloc, SettingsState>(
                    builder: (context, state) {
                      return ElevatedButton(
                        style: AppStyles.lightGreyElevatedButton,
                        onPressed: () {
                          final List<BottomSheetAction> actions = [];
                          state.maybeWhen(
                            success: (settings) async {
                              if (settings.feedback?.phone != null) {
                                actions.add(BottomSheetAction(
                                  title: Text(
                                    'Вызов +${(settings.feedback?.phone ?? "")}',
                                    style: AppStyles.bodyRegular.copyWith(
                                      color: !Platform.isIOS ? AppColors.black : const Color(0xFF007AFF),
                                    ),
                                  ),
                                  onPressed: (context) async {
                                    Uri phoneno = Uri(scheme: 'tel', path: '+${(settings.feedback?.phone ?? "")}');

                                    if (await canLaunchUrl(phoneno)) {
                                      await launchUrl(phoneno);
                                    }
                                  },
                                ));
                              }

                              if (settings.feedback?.vk != null) {
                                actions.add(BottomSheetAction(
                                  title: Text(
                                    'Написать в BK',
                                    style: AppStyles.bodyRegular.copyWith(
                                      color: !Platform.isIOS ? AppColors.black : const Color(0xFF007AFF),
                                    ),
                                  ),
                                  onPressed: (context) async {
                                    Uri link = Uri.parse(settings.feedback?.vk ?? '');

                                    if (await canLaunchUrl(link)) {
                                      await launchUrl(link);
                                    }
                                  },
                                ));
                              }

                              if (settings.feedback?.wa != null) {
                                actions.add(BottomSheetAction(
                                  title: Text(
                                    'Написать в WhatsApp',
                                    style: AppStyles.bodyRegular.copyWith(
                                      color: !Platform.isIOS ? AppColors.black : const Color(0xFF007AFF),
                                    ),
                                  ),
                                  onPressed: (context) async {
                                    Uri link = Uri.parse(settings.feedback?.wa ?? '');

                                    if (await canLaunchUrl(link)) {
                                      await launchUrl(link);
                                    }
                                  },
                                ));
                              }

                              if (settings.feedback?.tg != null) {
                                actions.add(BottomSheetAction(
                                  title: Text(
                                    'Написать в Telegram',
                                    style: AppStyles.bodyRegular.copyWith(
                                      color: !Platform.isIOS ? AppColors.black : const Color(0xFF007AFF),
                                    ),
                                  ),
                                  onPressed: (context) async {
                                    Uri link = Uri.parse(settings.feedback?.tg ?? '');

                                    if (await canLaunchUrl(link)) {
                                      await launchUrl(link);
                                    }
                                  },
                                ));
                              }
                            },
                            orElse: () => null,
                          );

                          showAdaptiveActionSheet(
                            context: context,
                            androidBorderRadius: 30,
                            actions: actions,
                            cancelAction: CancelAction(
                              title: const Text(
                                'Отмена',
                              ),
                            ),
                          );
                          // state.maybeWhen(
                          //   success: (settings) async {
                          //     Uri phoneno = Uri(
                          //         scheme: 'tel',
                          //         path: '+${(settings.feedback?.phone ?? "")}');

                          //     if (await canLaunchUrl(phoneno)) {
                          //       await launchUrl(phoneno);
                          //     }
                          //   },
                          //   orElse: () => null,
                          // );
                        },
                        child: SizedBox(
                          height: 24,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 3.23,
                                  top: 4.41,
                                  right: 3.53,
                                  bottom: 5.25,
                                ),
                                width: 24,
                                height: 24,
                                child: SvgPicture.asset(
                                  'assets/icons/svyaz.svg',
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                'Связаться',
                                style: AppStyles.callout.copyWith(
                                  color: AppColors.darkPrimary,
                                  height: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                if (!isCanceled)
                  SizedBox(
                    height: 56,
                    child: ElevatedButton(
                      style: AppStyles.lightGreyElevatedButton,
                      onPressed: () async {
                        final bool? result = await showDialog<bool?>(
                            context: context,
                            builder: (BuildContext context) {
                              return _cancelOrderDialog(context);
                            });

                        if (result != null && result) {
                          if (!context.mounted) return;
                          context.read<OrderBloc>().add(CancelOrder(widget.order.id));
                          setState(() {
                            isCanceled = true;
                          });
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(7.4),
                            width: 24,
                            height: 24,
                            child: SvgPicture.asset(
                              'assets/icons/close.svg',
                              color: AppColors.destructive,
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            'Отменить заказ',
                            style: AppStyles.callout.copyWith(
                              color: AppColors.destructive,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          RoundedContainer(
            header: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Адрес',
                  style: AppStyles.headline,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Text(
                  widget.order.address?.title ?? '',
                  style: AppStyles.subhead.copyWith(
                    color: AppColors.gray,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                InputText(
                  hintText: widget.order.comment ?? 'Без пожеланий.',
                  readOnly: true,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          RoundedContainer(
            header: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Оплата',
                  style: AppStyles.headline,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 12,
                ),
                Container(
                  height: 62,
                  decoration: BoxDecoration(
                    color: AppColors.lightScaffoldBackground,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        AppStyles.radiusElement,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 16,
                          ),
                          Container(
                            width: 56,
                            height: 30,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  AppStyles.radiusElement,
                                ),
                              ),
                            ),
                            child: SvgPicture.asset(
                              'assets/icons/payment_card.svg',
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            widget.order.payment.name,
                            style: AppStyles.subhead.copyWith(
                              color: AppColors.dark,
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   width: 14,
                      // ),
                      // Container(
                      //   width: 1,
                      //   height: double.infinity,
                      //   color: AppColors.lightGray,
                      // ),
                      // Expanded(
                      //   child: Center(
                      //     child: Text(
                      //       'При получении',
                      //       style: AppStyles.footnote.copyWith(
                      //         color: AppColors.darkGray,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 8),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Text(
                //         'Счастливые часы',
                //         style: AppStyles.caption1,
                //       ),
                //       Text(
                //         '−43 ₽',
                //         style: AppStyles.caption1.copyWith(
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 8),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Text(
                //         'Бизнес пицца',
                //         style: AppStyles.caption1,
                //       ),
                //       Text(
                //         '−43 ₽',
                //         style: AppStyles.caption1.copyWith(
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 8),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Text(
                //         'Ул. Королёва, 33Д',
                //         style: AppStyles.caption1,
                //       ),
                //       Text(
                //         'Бесплатно',
                //         style: AppStyles.caption1.copyWith(
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Сумма с учётом скидок',
                        style: AppStyles.caption1,
                      ),
                      Text(
                        '${widget.order.totalPrice} ₽',
                        style: AppStyles.caption1.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 20),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Text(
                //         'Начислим бонусов',
                //         style: AppStyles.caption1,
                //       ),
                //       Row(
                //         children: [
                //           Text(
                //             '152',
                //             style: AppStyles.caption1.copyWith(
                //               fontWeight: FontWeight.bold,
                //             ),
                //           ),
                //           AppStyles.xxsmall6HGap,
                //           SizedBox(
                //             width: 14,
                //             height: 14,
                //             child: SvgPicture.asset(
                //               'assets/icons/bonus_icn.svg',
                //               color: AppColors.lightPrimary,
                //             ),
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: AppColors.lightGray,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Итого:',
                      style: AppStyles.subheadBold.copyWith(
                        color: AppColors.darkGray,
                      ),
                    ),
                    Text(
                      '${widget.order.totalPrice} ₽',
                      style: AppStyles.bodyBold.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          RoundedContainer(
            header: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ваш заказ',
                  style: AppStyles.headline,
                ),
              ],
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                ...widget.order.products.map(
                  (product) => Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: ProductItem(
                      product: product,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                SizedBox(
                  height: 56,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: AppStyles.lightGreyElevatedButton,
                    onPressed: () async {
                      final bool? result = await showDialog<bool?>(
                          context: context,
                          builder: (BuildContext context) {
                            return _repeatOrderDialog(context);
                          });

                      if (result != null && result) {
                        widget.order.products
                            .map((product) => context.read<BasketBloc>().add(
                                  AddOffer(
                                    BasketOfferEntity(
                                      id: const Uuid().v4(),
                                      product: ProductEntity(
                                        id: product.id,
                                        name: product.title,
                                        price: product.price,
                                        image: product.image,
                                        isCombo: product.isCombo,
                                        isHalfPizza: product.isHalfPizza,
                                      ),
                                      quantity: product.qnt,
                                    ),
                                  ),
                                ))
                            .toList();
                        if (!context.mounted) return;
                        context.router.parent<TabsRouter>()?.navigate(const BasketRoute());
                      }
                    },
                    child: Text(
                      'Повторить заказ',
                      style: AppStyles.callout.copyWith(
                        color: AppColors.darkPrimary,
                        height: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _repeatOrderDialog(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoAlertDialog(
        title: const Text("Повторить заказ"),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text(
              "Отмена",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF007AFF),
              ),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text(
              "Повторить",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF007AFF),
              ),
            ),
          ),
        ],
        content: const Text(
          "Мы поместим блюда из этого заказа в корзину",
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 14,
            height: 20 / 14,
            letterSpacing: .25,
            color: Color(0xFF000000),
          ),
        ),
      );
    }

    return AlertDialog(
      //backgroundColor: Color(0xFFECE6F0),
      title: const Text("Повторить заказ"),
      titleTextStyle: AppStyles.title2.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
      actionsOverflowButtonSpacing: 20,
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text(
            "Отмена",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF007AFF),
            ),
          ),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: const Text(
            "Повторить",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF007AFF),
            ),
          ),
        ),
      ],
      content: const Text(
        "Мы поместим блюда из этого заказа в корзину",
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 14,
          height: 20 / 14,
          letterSpacing: .25,
          color: Color(0xFF000000),
        ),
      ),
    );
  }

  Widget _cancelOrderDialog(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoAlertDialog(
        title: const Text("Отменить заказ"),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text(
              "Отмена",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF007AFF),
              ),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 8),
            ),
            child: const Text(
              "Отменить заказ",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF007AFF),
              ),
            ),
          ),
        ],
        content: const Text(
          "Вы уверены, что хотите отменить заказ?",
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 14,
            height: 20 / 14,
            letterSpacing: .25,
            color: Color(0xFF000000),
          ),
        ),
      );
    }

    return AlertDialog(
      title: const Text("Отменить заказ"),
      titleTextStyle: AppStyles.title2.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
      actionsOverflowButtonSpacing: 20,
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text(
            "Отмена",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF007AFF),
            ),
          ),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: const Text(
            "Отменить заказ",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF007AFF),
            ),
          ),
        ),
      ],
      content: const Text(
        "Вы уверены, что хотите отменить заказ?",
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 14,
          height: 20 / 14,
          letterSpacing: .25,
          color: Color(0xFF000000),
        ),
      ),
    );
  }
}
