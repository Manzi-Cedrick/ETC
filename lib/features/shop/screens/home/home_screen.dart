import 'package:etrade_actions/common/product/product_cards/product_card_vertical.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TGriedViewLayout.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/THomeAppBar.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/THomeCategory.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TPrimaryHeader.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TPromoSlider.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TSearchStore.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TSectionHeading.dart';
import 'package:etrade_actions/utils/constants/image_strings.dart';
import 'package:etrade_actions/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  TStoreSearch(
                    displayText: 'Search in store',
                    onTap: () {},
                  ),
                  // Categories
                  const THomeCategory(),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: TSizes.spaceBtwItems),
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  TSectionHeading(
                    title: 'Popular Products',
                    showActionsButton: true,
                    onButtonPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const TGridViewLayout(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
