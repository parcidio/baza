import '../../../utils/constants/enums.dart';
import 'package:flutter/material.dart';

class AppBrandTextTile extends StatelessWidget {
  const AppBrandTextTile({
    super.key,
    required this.title,
    required this.maxLines,
    this.textColor,
    this.iconColor,
    this.textAlign,
    required this.brandTextSize,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: brandTextSize == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: textColor)
          : brandTextSize == TextSizes.small
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: textColor)
              : brandTextSize == TextSizes.small
                  ? Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .apply(color: textColor)
                  : Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(color: textColor),
    );
  }
}
