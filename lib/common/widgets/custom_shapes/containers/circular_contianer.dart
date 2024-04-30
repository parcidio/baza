import '../../../../utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppCircularContainer extends StatelessWidget {
  const AppCircularContainer(
      {super.key,
      this.height = 400,
      this.width = 400,
      this.radius = 400,
      this.padding = 0,
      this.child,
      this.backgroundColor = AppColors.white,
      this.margin});

  final double? height;
  final double? width;
  final double padding;
  final EdgeInsets? margin;
  final double radius;
  final Widget? child;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: width,
        height: height,
        margin: margin,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(400), color: backgroundColor),
        child: child,
      )
    ]);
  }
}
