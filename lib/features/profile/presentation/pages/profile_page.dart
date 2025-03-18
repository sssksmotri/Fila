import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../auth/presentation/bloc/auth/auth_bloc.dart';
import '../bloc/profile/profile_cubit.dart';
import '../widgets/auth_profile.dart';
import '../widgets/no_auth_profile.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthBloc authBloc = context.watch<AuthBloc>();

    if (authBloc.state == const AuthState.authenticated()) {
      context.read<ProfileCubit>().getProfile();
    }

    return Scaffold(
      body: authBloc.state == const AuthState.authenticated()
          ? const AuthProfile()
          : const NoAuthProfile(),
    );
  }
}
