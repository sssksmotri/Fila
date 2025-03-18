import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

import '../../../../core/widgets/rounded_container.dart';

class OrderDetailPreloader extends StatelessWidget {
  const OrderDetailPreloader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            enabled: true,
            child: SizedBox(
              width: double.infinity,
              child: RoundedContainer(
                height: 214,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
                child: Container(),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            enabled: true,
            child: SizedBox(
              width: double.infinity,
              child: RoundedContainer(
                height: 150,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
                child: Container(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
