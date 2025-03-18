import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../config/themes/colors.dart';
import '../../../../config/themes/styles.dart';
import '../../../home/domain/entities/product_entity.dart';

class GiftItem extends StatelessWidget {
  const GiftItem({
    super.key,
    required this.product,
    this.title,
  });

  final ProductEntity product;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 77,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 77,
            height: 77,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  product.image ?? 'https://placehold.co/134x134',
                ),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  AppStyles.radiusElement,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                    child: Column(
                      children: [
                        Expanded(
                          child: Text(
                            product.name,
                            style: AppStyles.subhead.copyWith(
                              color: AppColors.dark,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        if (title != null)
                          const SizedBox(
                            width: 10,
                          ),
                        if (title != null)
                          Text(
                            title!,
                            style: AppStyles.subheadBold.copyWith(
                              color: AppColors.dark,
                            ),
                          ),
                      ],
                    ),
                  ),
                  // const SizedBox(
                  //   height: 4,
                  // ),
                  const Spacer(),
                  Text(
                    product.description ?? '',
                    style: AppStyles.caption1.copyWith(
                      color: AppColors.gray,
                      height: 16 / 12,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
