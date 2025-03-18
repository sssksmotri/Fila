import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/themes/colors.dart';
import '../../../../config/themes/styles.dart';
import '../../../../injection_container.dart';
import '../../domain/entities/category_entity.dart';
import '../../domain/entities/collection_entity.dart';
import '../bloc/collection/collection_bloc.dart';
import '../widgets/catalog_item.dart';

@RoutePage()
class CollectionPage extends StatefulWidget {
  const CollectionPage({
    super.key,
    required this.collection,
  });

  final CollectionEntity collection;

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: getIt<CollectionBloc>()
            ..add(
              GetCollection(
                collectionId: widget.collection.id,
              ),
            ),
        ),
      ],
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: _buildBody(context),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(56),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.lightDarkGray.withOpacity(.05),
              blurRadius: 8.0,
              offset: const Offset(
                0.0,
                4.0,
              ),
            )
          ],
        ),
        child: AppBar(
          elevation: 0,
          surfaceTintColor: Colors.transparent,
          //toolbarHeight: 129 - 32,
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.white,
          titleSpacing: 0,
          //leadingWidth: 32 + 16,
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => context.popRoute(),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: SizedBox(
                        width: 32,
                        height: 32,
                        child: SizedBox(
                          width: 17.33,
                          height: 12.67,
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/icons/arrow_left.svg',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  AppStyles.xxsmall12HGap,
                  Expanded(
                    child: Text(
                      'Подборки',
                      style: AppStyles.headline,
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(right: 16),
                  //   child: SizedBox(
                  //     width: 24,
                  //     height: 24,
                  //     child: SizedBox(
                  //       width: 21.75,
                  //       height: 21.75,
                  //       child: Center(
                  //         child: SvgPicture.asset(
                  //           'assets/icons/search.svg',
                  //           color: AppColors.dark,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocBuilder<CollectionBloc, CollectionState>(
          builder: (context, state) {
            if (state is CollectionLoading) {}

            if (state is CollectionDone) {
              return SingleChildScrollView(
                child: CatalogItem(
                  catalog: CategoryEntity(
                    id: 0,
                    title: widget.collection.title,
                    products: state.collection?.products,
                    isCollection: state.collection?.isCollection ?? false,
                    color: state.collection?.color,
                  ),
                ),
              );
            }

            return Container();
          },
        ),
      ),
    );
  }
}
