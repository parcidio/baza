import '../../../../common/widgets/custom_shapes/containers/circular_contianer.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_egdes_widget.dart';
import '../../../../utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppPrimaryHeaderContainer extends StatelessWidget {
  const AppPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return AppCurvedWidget(
        child: Container(
      color: AppColors.primary,
      padding: const EdgeInsets.only(bottom: 0),
      child: Stack(children: [
        // background custom shapes
        Positioned(
          top: -150,
          right: -250,
          child: AppCircularContainer(
            backgroundColor: AppColors.textWhite.withOpacity(0.1),
          ),
        ),
        Positioned(
          top: 100,
          right: -300,
          child: AppCircularContainer(
            backgroundColor: AppColors.textWhite.withOpacity(0.1),
          ),
        ),
        child,
      ]),
    ));
  }
}
