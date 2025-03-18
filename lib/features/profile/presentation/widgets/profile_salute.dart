import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/themes/styles.dart';
import '../bloc/profile/profile_cubit.dart';

class PofileSalute extends StatelessWidget {
  const PofileSalute({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      context.watch<ProfileCubit>().state.maybeMap(
            done: (value) =>
                'Привет${(value.profile.user.name?.isNotEmpty == true ? ', ${value.profile.user.name}' : '')}',
            orElse: () => 'Привет',
          ),
      style: AppStyles.title2,
    );
  }
}
