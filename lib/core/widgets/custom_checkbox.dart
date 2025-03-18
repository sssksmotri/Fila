import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../config/themes/colors.dart';
import '../../config/themes/styles.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    super.key,
    this.label,
    required this.onSelect,
    this.height,
    this.width,
    this.sufix,
    this.selected = false,
    this.disabled = false,
    this.child,
  });

  final String? label;
  final ValueChanged<bool>? onSelect;
  final double? height;
  final double? width;
  final Widget? sufix;
  final bool selected;
  final bool disabled;
  final Widget? child;

  @override
  CustomCheckBoxState createState() => CustomCheckBoxState();
}

class CustomCheckBoxState extends State<CustomCheckBox> {
  bool _selected = false;

  void _onTap() {
    setState(() {
      _selected = !_selected;
    });
    if (widget.onSelect != null) {
      widget.onSelect!(_selected);
    }
  }

  @override
  void initState() {
    _selected = widget.selected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: !_selected && widget.disabled ? null : _onTap,
      child: Row(
        children: [
          Container(
            // padding: EdgeInsets.symmetric(
            //   vertical: 8,
            //   horizontal: 6.5,
            // ),
            decoration: BoxDecoration(
              color: !_selected && widget.disabled
                  ? AppColors.lightGray
                  : _selected
                      ? AppColors.lightPrimary
                      : Colors.transparent,
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  5,
                ),
              ),
              border: !_selected
                  ? Border.all(
                      color: AppColors.gray,
                      width: 1,
                    )
                  : null,
            ),
            width: widget.width ?? 22,
            height: widget.height ?? 22,
            child: Center(
              child: SizedBox(
                width: 9,
                height: 6,
                child: SvgPicture.asset(
                  'assets/icons/check.svg',
                ),
              ),
            ),
          ),
          AppStyles.xxsmallHGap,
          if (widget.label != null)
            Expanded(
              child: Text(
                widget.label!,
                style: AppStyles.footnote,
              ),
            ),
          if (widget.child != null) widget.child!,
          if (widget.sufix != null) widget.sufix!,
        ],
      ),
    );
  }
}
