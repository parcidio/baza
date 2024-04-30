import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppVerticalImageText extends StatelessWidget {
  const AppVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = Colors.white,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color? textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFuncions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: AppSizes.defaultSpace),
        child: Column(
          children: [
            // Circular Icon
            Container(
                width: 56,
                height: 56,
                padding: const EdgeInsets.all(AppSizes.sm),
                decoration: BoxDecoration(
                    color: backgroundColor ??
                        (isDark ? AppColors.black : AppColors.white),
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                  // child: Image(
                  //     image: AssetImage(image),
                  //     fit: BoxFit.cover,
                  //     color: (isDark ? AppColors.dark : AppColors.light)),

                  child: SvgPicture.asset(image,
                      fit: BoxFit.cover,
                      height: AppSizes.iconMd,
                      width: AppSizes.iconMd,
                      colorFilter: ColorFilter.mode(
                          isDark ? AppColors.white : AppColors.black,
                          BlendMode.srcIn)),
                )),
            // Text
            const SizedBox(
              height: AppSizes.spaceBetweenItems / 2,
            ),
            SizedBox(
                width: 55,
                child: Center(
                  child: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .apply(color: textColor),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
