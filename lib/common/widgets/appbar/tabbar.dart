import '../../../utils/constants/colors.dart';
import '../../../utils/device/device._utility.dart';
import '../../../utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AppTabBar extends StatelessWidget implements PreferredSizeWidget {
  const AppTabBar({
    super.key,
    required this.tabs,
    this.isScrollable = true,
  });

  final List tabs;
  final bool isScrollable;

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFuncions.isDarkMode(context);
    return Material(
      color: isDark ? AppColors.black : AppColors.white,
      child: TabBar(
          indicatorColor: AppColors.primary,
          isScrollable: isScrollable,
          unselectedLabelColor: AppColors.darkGrey,
          labelColor: isDark ? AppColors.white : AppColors.primary,
          tabs: tabs
              .map((category) => Tab(
                    child: Text(category['title']),
                  ))
              .toList()),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppDeviceUtils.getAppBarHeight());
}
