import 'package:flutter/material.dart';

class ProfileItem {
  final String icon;
  final String text;
  final void Function(BuildContext context)? onTap;

  ProfileItem({
    required this.icon,
    required this.text,
    required this.onTap,
  });
}
