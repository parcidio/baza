import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device._utility.dart';
import '../../../../utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppSearchContainer extends StatelessWidget {
  const AppSearchContainer({
    super.key,
    this.showIconPrefix = true,
    this.showIconSuffix = true,
    this.showBackground = true,
    this.showBorder = true,
    this.iconPrefix,
    this.iconSuffix,
    this.text = "Search...",
    this.padding =
        const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
  });

  final IconData? iconPrefix, iconSuffix;
  final String text;
  final bool showIconPrefix, showIconSuffix, showBackground, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = AppHelperFuncions.isDarkMode(context);
    return Padding(
        padding: padding,
        child: Container(
          width: AppDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(AppSizes.md),
          decoration: BoxDecoration(
              color: showBackground
                  ? isDarkMode
                      ? AppColors.dark
                      : AppColors.white
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
              border: showBorder ? Border.all(color: AppColors.grey) : null),
          child: Row(
            children: [
              Expanded(
                  child: Row(children: [
                const Icon(Iconsax.search_normal, color: AppColors.darkGrey),
                const SizedBox(width: AppSizes.spaceBetweenItems),
                Text(text, style: Theme.of(context).textTheme.bodySmall),
              ])),
              showIconSuffix
                  ? Icon(iconSuffix, color: AppColors.darkerGrey)
                  : const SizedBox(),
            ],
          ),
        ));
  }
}
