import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(AppSizes.spaceBetweenItems),
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: SvgPicture.asset(
            AppImages.googleLogo,
            height: AppSizes.iconMd,
            width: AppSizes.iconMd,
          ),
        ),
        const SizedBox(
          width: AppSizes.spaceBetweenItems,
        ),
        Container(
          padding: const EdgeInsets.all(AppSizes.spaceBetweenItems),
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: SvgPicture.asset(
            AppImages.facebookLogo,
            height: AppSizes.iconMd,
            width: AppSizes.iconMd,
          ),
        ),
      ],
    );
  }
}
