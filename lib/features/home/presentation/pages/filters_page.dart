import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../config/themes/styles.dart';
import '../widgets/filter_content.dart';

@RoutePage()
class FiltersPage extends StatelessWidget {
  const FiltersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 4,
          ),
          SizedBox(
            height: 30,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Фильтры',
                style: AppStyles.title3,
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const FilterContent(),
          //const Expanded(child: FilterContent()),
        ],
      ),
    );
  }
}
