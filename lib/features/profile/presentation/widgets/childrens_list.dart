import 'package:auto_route/auto_route.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../../config/routes/app_router.dart';
import '../../../../config/themes/colors.dart';
import '../../../../config/themes/styles.dart';
import '../../domain/entities/child_entity.dart';
import 'child_item.dart';

class ChildrensList extends StatelessWidget {
  const ChildrensList({
    super.key,
    required this.childrens,
  });

  final List<ChildEntity> childrens;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: childrens.length,
          itemBuilder: (context, index) => ChildItem(
            child: childrens[index],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        if (childrens.length < 4)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GestureDetector(
              onTap: () => context.navigateTo(const AddChildRoute()),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  dashPattern: const [8, 8],
                  color: AppColors.gray,
                  radius: Radius.circular(AppStyles.radiusElement),
                  strokeWidth: 1,
                  child: Center(
                    child: Text(
                      'Добавить ещё +',
                      style: AppStyles.bodyBold.copyWith(color: AppColors.gray),
                    ),
                  ),
                ),
              ),
            ),
          ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
