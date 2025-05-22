import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:url_launcher/url_launcher.dart';

import '../../../home/presentation/bloc/settings/settings_bloc.dart';
import 'social_network_item.dart';

class SocialNetworks extends StatelessWidget {
  const SocialNetworks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (success) => Row(
            //crossAxisAlignment: WrapCrossAlignment.center,
            //spacing: 12,
            children: [
              if (success.socnet?.vk?.isNotEmpty == true)
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      String urlString = success.socnet!.vk! ?? '';
                      if (Uri.tryParse(urlString)?.scheme.isEmpty ?? true) {
                        urlString = 'https://$urlString';
                      }
                      Uri link = Uri.parse(urlString);
                      if (await canLaunchUrl(link)) {
                        await launchUrl(link);
                      }
                    },
                    child: const SocialNetworksItem(
                      color: Color(0xFF0077FF),
                      inconPath: 'assets/icons/vk.svg',
                    ),
                  ),
                ),
              const SizedBox(
                width: 12,
              ),
              if (success.socnet?.tg?.isNotEmpty == true)
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      String urlString = success.socnet!.tg! ?? '';
                      if (Uri.tryParse(urlString)?.scheme.isEmpty ?? true) {
                        urlString = 'https://$urlString';
                      }
                      Uri link = Uri.parse(urlString);
                      if (await canLaunchUrl(link)) {
                        await launchUrl(link);
                      }
                    },
                    child: const SocialNetworksItem(
                      color: Color(0xFF26A4E2),
                      inconPath: 'assets/icons/tg.svg',
                    ),
                  ),
                ),
              const SizedBox(
                width: 12,
              ),
              if (success.socnet?.insta?.isNotEmpty == true)
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      String urlString = success.socnet!.insta! ?? '';
                      if (Uri.tryParse(urlString)?.scheme.isEmpty ?? true) {
                        urlString = 'https://$urlString';
                      }
                      Uri link = Uri.parse(urlString);
                      if (await canLaunchUrl(link)) {
                        await launchUrl(link);
                      }
                    },
                    child: const SocialNetworksItem(
                      color: Color(0xFFF5F5F5),
                      inconPath: 'assets/icons/in.svg',
                    ),
                  ),
                ),
            ],
          ),
          orElse: () => Container(),
        );
        // return Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     const Expanded(
        //       child: SocialNetworksItem(
        //         color: Color(0xFF0077FF),
        //         inconPath: 'assets/icons/vk.svg',
        //       ),
        //     ),
        //     SizedBox(
        //       width: 12,
        //     ),
        //     const Expanded(
        //       child: SocialNetworksItem(
        //         color: Color(0xFF26A4E2),
        //         inconPath: 'assets/icons/tg.svg',
        //       ),
        //     ),
        //     SizedBox(
        //       width: 12,
        //     ),
        //     const Expanded(
        //       child: SocialNetworksItem(
        //         color: Color(0xFFF5F5F5),
        //         inconPath: 'assets/icons/in.svg',
        //       ),
        //     ),
        //   ],
        // );
      },
    );
  }
}
