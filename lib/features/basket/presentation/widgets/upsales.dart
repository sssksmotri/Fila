import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monobox/features/basket/presentation/bloc/basket/upsales/upsales_bloc.dart';
import 'package:monobox/features/basket/presentation/widgets/choose_upsales2.dart';
import 'package:monobox/features/order/domain/entities/upsale_entity.dart';

class Upsales extends StatefulWidget {
  const Upsales({super.key});

  @override
  State<Upsales> createState() => _UpsalesState();
}

class _UpsalesState extends State<Upsales> {
  UpsaleEntity? upsale;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpsalesBloc, UpsalesState>(
      listener: (context, state) {
        state.maybeMap(
          success: (value) {
            if (value.upsales.isNotEmpty) {
              setState(() {
                upsale = value.upsales[0];
              });
            }
          },
          orElse: () => null,
        );
      },
      builder: (context, state) {
        return state.maybeMap(
          success: (value) {
            // setState(() {
            //   upsale = value.upsales[0];
            // });
            if (value.upsales.isNotEmpty) {
              return Column(
                children: [
                  ChooseUpsales2(
                    upsale: value.upsales[0],
                  ),
                ],
              );
            }

            return Container();
          },
          loading: (value) {
            if (upsale == null) {
              return Container();
            }

            return Column(
              children: [
                ChooseUpsales2(
                  upsale: upsale!,
                ),
              ],
            );
          },
          orElse: () => Container(),
        );
      },
    );
  }
}
