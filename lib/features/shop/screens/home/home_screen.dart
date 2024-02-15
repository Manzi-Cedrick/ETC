import 'package:etrade_actions/features/shop/screens/home/widgets/THomeAppBar.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/THomeCategory.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TPrimaryHeader.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TSearchStore.dart';
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
                  TStoreSearch(displayText: 'Search in store', onTap: () {},),
                  // Categories
                  const THomeCategory(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(TSizes.md),
                ),
                child: const Image(
                  image: AssetImage(TImages.promoBanner2),
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
