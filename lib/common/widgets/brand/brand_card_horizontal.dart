import '../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../common/widgets/images/circular_image.dart';
import '../../../common/widgets/text/brand_title_text_with_vertical_icon.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AppBrandCardHorizontal extends StatelessWidget {
  const AppBrandCardHorizontal({
    super.key,
    required this.brandIcon,
    required this.brandName,
    required this.details,
    this.showBorder = true,
  });

  final String brandIcon;
  final String brandName, details;
  final bool showBorder;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: AppRoundedContainer(
        showBorder: showBorder,
        padding: const EdgeInsets.all(AppSizes.sm),
        backgroundColor: Colors.transparent,
        child: Row(children: [
          Flexible(
            child: AppCircularImage(
              fit: BoxFit.scaleDown,
              image: brandIcon,
              backgroundColor: Colors.transparent,
              overlayColor: AppHelperFuncions.isDarkMode(context)
                  ? AppColors.white
                  : AppColors.black,
            ),
          ),

          /// Text

          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBrandTextTitleWithVerticalIcon(
                  title: brandName,
                  brandTextSize: TextSizes.large,
                ),
                Text(details,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
