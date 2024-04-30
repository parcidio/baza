import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AppCircularIcon extends StatelessWidget {
  const AppCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size,
    required this.onPressed,
    this.icon,
    this.backgroundColor,
    this.color,
  });

  final double? width, height, size;
  final VoidCallback onPressed;
  final IconData? icon;
  final Color? backgroundColor, color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor ??
              (AppHelperFuncions.isDarkMode(context)
                  ? AppColors.black.withOpacity(0.9)
                  : AppColors.white.withOpacity(0.9))),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: size,
            color: color,
          )),
    );
  }
}
