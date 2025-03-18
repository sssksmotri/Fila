import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monobox/features/home/presentation/bloc/action/action_bloc.dart';
import 'package:monobox/features/home/presentation/widgets/action_content.dart';
import 'package:monobox/injection_container.dart';

import '../../../../config/themes/styles.dart';

@RoutePage()
class ActionPage extends StatelessWidget {
  const ActionPage({
    super.key,
    required this.title,
    required this.actionId,
  });

  final String title;
  final int actionId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<ActionBloc>()
        ..add(
          ActionEvent.getAction(actionId),
        ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: SizedBox(
                height: 30,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: AppStyles.title3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const ActionContent(),
          ],
        ),
      ),
    );
  }
}
