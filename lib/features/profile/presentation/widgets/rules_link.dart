import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:monobox/config/themes/colors.dart';
import 'package:monobox/config/themes/styles.dart';
import 'package:monobox/features/home/presentation/widgets/custom_bottom_sheet.dart';

class RulesLink extends StatelessWidget {
  const RulesLink({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: AppColors.white,
          useRootNavigator: true,
          context: context,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(
                AppStyles.radiusBlock,
              ),
            ),
          ),
          builder: (BuildContext context) {
            return CustomBottomSheet(
              header: Text(
                'Правила действия акции',
                style: AppStyles.headline,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      height: 36,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color: AppColors.superLight,
                          ),
                        ),
                      ),
                      child: SizedBox(
                        height: 24,
                        child: Text(
                          'Важно',
                          style: AppStyles.headline,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Вводите данные внимательно. Сотрудники могут попросить документы для подтверждения даты рождения.',
                      style: AppStyles.body.copyWith(color: AppColors.dark),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      height: 36,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color: AppColors.superLight,
                          ),
                        ),
                      ),
                      child: Text(
                        'Условия',
                        style: AppStyles.headline,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Добавить возможно не более 4-х детей, при этом изменить данные будет возможно только через поддержку.\n\nВ день рождения ребёнка, для вас будет действовать особая акция, мы отправим вам СМС за 2 дня со всей информацией.\n',
                      style: AppStyles.body.copyWith(color: AppColors.dark),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.5,
                    ),
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          AutoRouter.of(context).pop();
                        },
                        child: Center(
                          child: Text(
                            'Ок',
                            style: AppStyles.headline.copyWith(
                              color: AppColors.white,
                            ),
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
            );
          },
        );
      },
      child: Row(
        children: [
          Text(
            'Правила действия акции',
            style: AppStyles.footnoteBold.copyWith(
              color: AppColors.dark,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 7,
              top: 5,
              right: 6.78,
              bottom: 4.25,
            ),
            width: 20,
            height: 20,
            child: SvgPicture.asset(
              'assets/icons/arrow_right.svg',
              color: AppColors.dark,
            ),
          ),
        ],
      ),
    );
  }
}
