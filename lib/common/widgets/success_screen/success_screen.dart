import '../../../common/styles/spacinng_styles.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SuccesScreen extends StatelessWidget {
  const SuccesScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});
  final String image, title, subTitle;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: AppSpacingStyle.paddingWithAppHeidth * 2,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //  Image
                  Image(
                    image: AssetImage(image),
                    width: AppHelperFuncions.screenWidth() * 0.7,
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBetweenSections,
                  ),
                  // Title & Sibtitle
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBetweenItems,
                  ),

                  Text(
                    subTitle,
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBetweenSections,
                  ),

                  // Buttons
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: onPressed,
                      child: const Text(AppTexts.proceed),
                    ),
                  ),
                ])),
      ),
    );
  }
}
