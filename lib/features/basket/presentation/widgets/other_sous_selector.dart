import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monobox/config/themes/styles.dart';
import 'package:monobox/features/basket/presentation/bloc/basket/gifts/gifts_bloc.dart';
import 'package:monobox/features/basket/presentation/widgets/dop_product_item.dart';
import 'package:monobox/features/home/domain/entities/product_entity.dart';
import 'package:monobox/features/home/presentation/widgets/custom_bottom_sheet.dart';
import 'package:monobox/injection_container.dart';

class OtherSousSelector extends StatelessWidget {
  const OtherSousSelector({
    super.key,
    required this.products,
  });

  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<GiftsBloc>(),
      child: CustomBottomSheet(
        header: Text(
          'Дополнительно',
          style: AppStyles.title3,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            ...products.map(
              (product) => Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: DopProductItem(
                  product: product,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: () => AutoRouter.of(context).pop(),
                child: const Text('Готово'),
              ),
            ),
            const SizedBox(
              height: 21,
            ),
          ],
        ),
      ),
    );
  }
}
