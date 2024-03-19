import 'package:etrade_actions/common/widgets/appbar/appbar.dart';
import 'package:etrade_actions/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TCircularContainerImage.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TSectionHeading.dart';
import 'package:etrade_actions/utils/constants/colors.dart';
import 'package:etrade_actions/utils/constants/image_strings.dart';
import 'package:etrade_actions/utils/constants/sizes.dart';
import 'package:etrade_actions/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Profile',
            style: Theme.of(context).textTheme.headlineMedium!.apply(
                color: THelperFunctions.isDarkMode(context)
                    ? TColors.white
                    : TColors.black)),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const TRoundedImage(
                    image: TImages.user, height: 80, width: 80),
                TextButton(
                  onPressed: () {},
                  child: const Text('Change profile Picture'),
                ),

                const SizedBox(height: TSizes.spaceBtwItems / 2),
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems),
                const TSectionHeading(title: 'Profile Information', showActionsButton: false),
                const SizedBox(height: TSizes.spaceBtwItems),

                TProfileMenu(onPressed: () {}, title: 'Name', value: 'Manzi Cedrick'),
                TProfileMenu(onPressed: () {}, title: 'Username', value: 'ManziCedrick01'),

                const SizedBox(height: TSizes.spaceBtwItems / 2),
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems),
                const TSectionHeading(title: 'Personal Information', showActionsButton: false),
                const SizedBox(height: TSizes.spaceBtwItems),
                TProfileMenu(onPressed: () {}, title: 'User ID', value: 'TY4561', icon: Iconsax.copy,),
                TProfileMenu(onPressed: () {}, title: 'E-mail', value: 'cedrickmanzii0@gmail.com'),
                TProfileMenu(onPressed: () {}, title: 'Phone Number', value: '+250-7809-183-790'),
                TProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male'),
                TProfileMenu(onPressed: () {}, title: 'Date of Birth', value: '10 Oct, 2005'),

                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems),

                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('Close Account', style: TextStyle(color: Colors.red),),
                  ),
                )
              ],
            ),
          )
        ]),
      )),
    );
  }
}
