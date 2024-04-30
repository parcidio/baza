import '../../../common/widgets/appbar/appbar.dart';
import '../../../common/widgets/images/circular_image.dart';
import '../../../common/widgets/text/section_heading.dart';
import '../../../presentation/personalization/profile/widgets/profile_menu.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(children: [
            // Profile picture
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const AppCircularImage(
                    isSvg: false,
                    image: AppImages.profile,
                    width: 80,
                    height: 80,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text('change profile picture'))
                ],
              ),
            ),

            // Details
            const SizedBox(
              height: AppSizes.spaceBetweenItems / 2,
            ),
            const Divider(),
            const SizedBox(
              height: AppSizes.spaceBetweenItems,
            ),
            const AppSectionHeading(
              title: "Profile information",
              showActionButton: false,
            ),
            const SizedBox(
              height: AppSizes.spaceBetweenItems,
            ),

            AppProfileMenu(
              title: "Name",
              value: 'Parciido Andre',
              onPressed: () {},
            ),
            AppProfileMenu(
              title: "Account type",
              value: 'personal',
              onPressed: () {},
            ),
            AppProfileMenu(
              title: "User ID",
              value: '454893',
              icon: Iconsax.copy,
              onPressed: () {},
            ),

            const SizedBox(
              height: AppSizes.spaceBetweenItems / 2,
            ),
            const Divider(),
            const SizedBox(
              height: AppSizes.spaceBetweenItems,
            ),

            AppProfileMenu(
              title: "Email",
              value: 'parcidioandre@gmail.com',
              onPressed: () {},
            ),
            AppProfileMenu(
              title: "Phone",
              value: '+264 816165751',
              onPressed: () {},
            ),
            AppProfileMenu(
              title: "Gender",
              value: 'Name',
              onPressed: () {},
            ),
            AppProfileMenu(
              title: "Date of birth",
              value: '21 May 200',
              onPressed: () {},
            ),
            const Divider(),
            const SizedBox(
              height: AppSizes.spaceBetweenItems,
            ),

            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Delete account",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
