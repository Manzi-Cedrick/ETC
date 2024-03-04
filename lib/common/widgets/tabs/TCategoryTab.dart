import 'package:etrade_actions/common/widgets/brands/TBrandShowcase.dart';
import 'package:etrade_actions/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TGriedViewLayout.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TSectionHeading.dart';
import 'package:etrade_actions/utils/constants/image_strings.dart';
import 'package:etrade_actions/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                // Brand Related Info
                const TBrandCardShowcase(
                  images: [
                    TImages.productImage3,
                    TImages.productImage2,
                    TImages.productImage1
                  ],
                ),

                TSectionHeading(
                    title: 'You might like', onButtonPressed: () {}),
                const SizedBox(height: TSizes.spaceBtwSections),

                TGridViewLayout(
                  itemCount: 4,
                  mainAxisExtent: 280,
                  itemBuilder: (_, index) => const TProductCartVertical(),
                ),

                
              ],
            ),
          )
        ]);
  }
}
