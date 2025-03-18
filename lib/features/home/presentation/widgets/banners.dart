import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_cached_network_image/fast_cached_network_image.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:monobox/config/routes/app_router.dart';

import '../../../../config/themes/colors.dart';
import '../../../../config/themes/styles.dart';
import '../../domain/entities/banner_entity.dart';
import '../bloc/banners/banners_bloc.dart';

class Banners extends StatelessWidget {
  const Banners({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannersBloc, BannersState>(
      builder: (context, state) {
        if (state is BannersLoading) {
          return ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(width: 16),
              _bannerPlaceholder(),
              const SizedBox(width: 8),
              _bannerPlaceholder(),
              const SizedBox(width: 16),
            ],
          );
        }

        if (state is BannersDone) {
          final List<BannerEntity> banners = state.banners!;
          final int bannersCount = banners.length;

          return FlutterCarousel(
            options: CarouselOptions(
              //enableInfiniteScroll: true,
              disableCenter: true,
              height: 125.0,
              showIndicator: false,
              //viewportFraction: 325 / MediaQuery.of(context).size.width,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              //slideIndicator: CircularSlideIndicator(),
            ),
            items: banners.map((banner) {
              return Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    onTap: () {
                      if (banner.url?.isNotEmpty == true) {
                        AutoRouter.of(context).push(
                          ActionRoute(
                            title: banner.title,
                            actionId: int.parse(banner.url!.split('/').last),
                          ),
                        );
                      }
                    },
                    child: Container(
                      width: AppStyles.bannerWidth,
                      height: AppStyles.bannerHeight,
                      padding: const EdgeInsets.only(right: 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(AppStyles.btnRadius),
                        child: FastCachedImage(
                          url: banner.image,
                          fit: BoxFit.fitWidth,
                          fadeInDuration: const Duration(seconds: 0),
                          errorBuilder: (context, exception, stacktrace) {
                            return _bannerPlaceholder();
                          },
                        ),
                      ),
                      // child: CachedNetworkImage(
                      //   imageUrl: banner.image,
                      //   imageBuilder: (context, imageProvider) => Container(
                      //     width: AppStyles.bannerWidth,
                      //     height: AppStyles.bannerHeight,
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.all(
                      //         Radius.circular(AppStyles.btnRadius),
                      //       ),
                      //       image: DecorationImage(
                      //         image: imageProvider,
                      //         fit: BoxFit.cover,
                      //       ),
                      //     ),
                      //   ),
                      //   //placeholder: (context, url) => _bannerPlaceholder(),
                      //   errorWidget: (context, url, error) => _bannerPlaceholder(),
                      // ),
                    ),
                  );
                },
              );
            }).toList(),
          );

          // return CarouselSlider(
          //   items: banners
          //       .map(
          //         (banner) => Container(
          //           width: 341,
          //           height: 125,
          //           padding: EdgeInsets.only(right: 8),
          //           child: CachedNetworkImage(
          //             height: 125,
          //             width: double.infinity,
          //             imageUrl: banner.image,
          //             imageBuilder: (context, imageProvider) => Container(
          //               width: AppStyles.bannerWidth,
          //               height: AppStyles.bannerHeight,
          //               decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.all(
          //                   Radius.circular(AppStyles.btnRadius),
          //                 ),
          //                 image: DecorationImage(
          //                   image: imageProvider,
          //                   fit: BoxFit.fill,
          //                 ),
          //               ),
          //             ),
          //             placeholder: (context, url) => _bannerPlaceholder(),
          //             errorWidget: (context, url, error) => _bannerPlaceholder(),
          //           ),
          //         ),
          //       )
          //       .toList(),
          //   options: CarouselOptions(
          //     //disableCenter: true,
          //     enableInfiniteScroll: false,
          //     height: 125,
          //     viewportFraction: 325 / (MediaQuery.of(context).size.width - 0),
          //     aspectRatio: 325 / (MediaQuery.of(context).size.width - 0),
          //   ),
          // );

          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: bannersCount,
            itemBuilder: (context, index) {
              final BannerEntity banner = banners[index];
              return Padding(
                padding: EdgeInsets.only(
                  left: index == 0 ? 16 : 0,
                  right: (index + 1) == bannersCount ? 16 : 8,
                ),
                child: CachedNetworkImage(
                  imageUrl: banner.image,
                  imageBuilder: (context, imageProvider) => Container(
                    width: AppStyles.bannerWidth,
                    height: AppStyles.bannerHeight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(AppStyles.btnRadius),
                      ),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  placeholder: (context, url) => _bannerPlaceholder(),
                  errorWidget: (context, url, error) => _bannerPlaceholder(),
                ),
              );
            },
          );
        }
        return Container();
      },
    );
  }

  Widget _bannerPlaceholder() {
    return Container(
      width: AppStyles.bannerWidth,
      height: AppStyles.bannerHeight,
      decoration: BoxDecoration(
        color: AppColors.shimmer,
        borderRadius: BorderRadius.all(
          Radius.circular(AppStyles.btnRadius),
        ),
      ),
    );
  }
}
