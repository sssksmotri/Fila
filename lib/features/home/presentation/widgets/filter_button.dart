import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/routes/app_router.dart';
import '../../../../config/themes/colors.dart';
import '../../../../config/themes/styles.dart';
import '../bloc/cubit/search_cubit.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: 48,
          height: 48,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(AppStyles.btnRadius),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.gray.withOpacity(.05),
                  blurRadius: 8.0,
                  offset: const Offset(
                    0.0,
                    4.0,
                  ),
                )
              ],
            ),
            child: ElevatedButton(
              style: AppStyles.lightGreyElevatedButton,
              onPressed: () async {
                context.router.push(const FiltersRoute());
                // bool? result = await showModalBottomSheet(
                //   isScrollControlled: true,
                //   backgroundColor: AppColors.white,
                //   useRootNavigator: true,
                //   context: context,
                //   clipBehavior: Clip.antiAliasWithSaveLayer,
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.vertical(
                //       top: Radius.circular(
                //         AppStyles.radiusBlock,
                //       ),
                //     ),
                //   ),
                //   builder: (BuildContext context) {
                //     return BottomSheetContainer(
                //       header: Text(
                //         'Фильтры',
                //         style: AppStyles.title3,
                //       ),
                //       child: const FilterContent(),
                //     );
                //   },
                // );

                // if (result == null || !result) {
                //   if (!context.mounted) return;
                //   context.read<AppliedFilterStateCubit>().unselectAllTags();
                //   //getIt<SearchCubit>().clear();
                // }

                // if (result != null && result) {
                //   if (!context.mounted) return;
                //   context.navigateTo(const SearchRoute());
                // }
              },
              child: SvgPicture.asset(
                'assets/icons/filter.svg',
              ),
            ),
          ),
        ),
        BlocBuilder<SearchCubit, SearchState>(
          builder: (context, state) {
            if (state.selectedTags.isNotEmpty) {
              return Positioned(
                right: -4,
                top: -4,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.lightPrimary,
                  ),
                  child: Center(
                    child: Text(
                      '${state.selectedTags.length}',
                      style: AppStyles.caption1Bold.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              );
            }
            return Container();
          },
        ),
      ],
    );
  }
}
