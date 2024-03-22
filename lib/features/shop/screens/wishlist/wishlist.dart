import 'package:etrade_actions/common/widgets/appbar/appbar.dart';
import 'package:etrade_actions/common/widgets/icon/circular_icon.dart';
import 'package:etrade_actions/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:etrade_actions/features/shop/screens/home/home_screen.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TGriedViewLayout.dart';
import 'package:etrade_actions/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title:
            Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCicularIcon(
              icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen()))
        ],
        showBackArrow: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridViewLayout(
                itemCount: 8,
                mainAxisExtent: 280,
                itemBuilder: (_, index) => const TProductCartVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
