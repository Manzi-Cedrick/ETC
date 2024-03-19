import 'package:etrade_actions/common/widgets/product/cart/cart_item.dart';
import 'package:etrade_actions/features/shop/screens/cart/widgets/product_quantity.dart';
import 'package:etrade_actions/features/shop/screens/product_details/widgets/product_price_text.dart';
import 'package:etrade_actions/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) => const SizedBox(
        height: TSizes.spaceBtwSections,
      ),
      itemBuilder: (_, index) => Column(
        children: [
          const TCartItem(),
          if (showAddRemoveButtons) const SizedBox(height: TSizes.spaceBtwItems),
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70),
                    TProductQuantityWithAddRemoveButton(),
                  ],
                ),
                TProductPriceText(price: '256'),
              ],
            )
        ],
      ),
    );
  }
}
