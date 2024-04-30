import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppCircularImage extends StatelessWidget {
  const AppCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.width = 50,
    this.height = 50,
    this.padding = const EdgeInsets.all(AppSizes.sm),
    this.overlayColor,
    this.backgroundColor,
    this.isSvg = true,
  });

  final BoxFit fit;
  final String image;
  final bool isNetworkImage, isSvg;
  final double width, height;
  final EdgeInsetsGeometry padding;
  final Color? overlayColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFuncions.isDarkMode(context);

    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
          color: backgroundColor ??
              (AppHelperFuncions.isDarkMode(context)
                  ? AppColors.black
                  : AppColors.white),
          borderRadius: BorderRadius.circular(100)),
      child: isSvg
          ? SvgPicture.asset(image,
              fit: fit,
              height: AppSizes.iconMd,
              width: AppSizes.iconMd,
              colorFilter: ColorFilter.mode(
                  isDark ? AppColors.white : AppColors.black, BlendMode.srcIn))
          : Image.asset(
              image,
              fit: fit,
              height: AppSizes.iconMd,
              width: AppSizes.iconMd,
            ),
    );
  }
}
