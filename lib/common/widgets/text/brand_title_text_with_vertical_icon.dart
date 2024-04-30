import '../../../common/widgets/text/brand_text_tile.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppBrandTextTitleWithVerticalIcon extends StatelessWidget {
  const AppBrandTextTitleWithVerticalIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = AppColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.max, children: [
      Flexible(
        child: AppBrandTextTile(
          title: title,
          maxLines: maxLines,
          textColor: textColor,
          iconColor: iconColor,
          textAlign: textAlign,
          brandTextSize: brandTextSize,
        ),
      ),
      const SizedBox(width: AppSizes.spaceBetweenItems),
      const Icon(Iconsax.verify5,
          color: AppColors.primary, size: AppSizes.iconXs),
    ]);
  }
}
