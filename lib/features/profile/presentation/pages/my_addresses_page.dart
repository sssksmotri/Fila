import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/themes/colors.dart';
import '../../../../config/themes/styles.dart';
import '../../../../injection_container.dart';
import '../../../address_setup/presentation/bloc/create_address/create_address_bloc.dart';
import '../widgets/my_address_list.dart';

@RoutePage()
class MyAddressesPage extends StatelessWidget {
  const MyAddressesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<CreateAddressBloc>(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              height: 30,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Мои адреса',
                  style: AppStyles.title3,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            const MyAddressList()
            // const Expanded(
            //   child: SingleChildScrollView(
            //     child: MyAddressList(),
            //   ),
            // ),
          ],
        ),
      ),
    );

    return BlocProvider.value(
      value: getIt<CreateAddressBloc>(),
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 4,
                ),
                SizedBox(
                  height: 30,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Мои адреса',
                      style: AppStyles.title3,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Expanded(
                  child: SingleChildScrollView(
                    child: MyAddressList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
