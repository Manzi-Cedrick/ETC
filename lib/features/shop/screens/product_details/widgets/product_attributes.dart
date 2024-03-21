import 'package:etrade_actions/common/chips/t_choice_chip.dart';
import 'package:etrade_actions/common/widgets/custom_shapes/circular_container.dart';
import 'package:etrade_actions/common/widgets/texts/product_title_text.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TSectionHeading.dart';
import 'package:etrade_actions/features/shop/screens/product_details/widgets/product_price_text.dart';
import 'package:etrade_actions/utils/constants/colors.dart';
import 'package:etrade_actions/utils/constants/sizes.dart';
import 'package:etrade_actions/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        const SizedBox(
          height: TSizes.md,
        ),
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          radius: TSizes.md,
          backgroundColor: dark ? TColors.darkerGrey : TColors.lightGrey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const TSectionHeading(
                      title: 'Variation', showActionsButton: false),
                  const SizedBox(width: TSizes.spaceBtwSections),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                              title: 'Price: ', smallSize: true),
                          Text(
                            '\$25',
                            style:
                                Theme.of(context).textTheme.titleSmall!.apply(
                                      decoration: TextDecoration.lineThrough,
                                    ),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          const TProductPriceText(price: '20')
                        ],
                      ),
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Stock',
                            smallSize: true,
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          Text(
                            'In Stock',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .apply(color: TColors.primary),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      )
                    ],
                  ),
                ],
              ),
              // Stock
              const TProductTitleText(
                title:
                    'This is the product description of the product and it can go up to max lines.',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors'),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              children: [
                TChoiceChip(
                    text: 'Green', selected: true, onSelected: (value) {}),
                TChoiceChip(
                  text: 'Blue',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Size', showActionsButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'EU 34', selected: true, onSelected: (value) {},),
                TChoiceChip(text: 'EU 36', selected: false, onSelected: (value) {},),
                TChoiceChip(text: 'EU 38', selected: false, onSelected: (value) {},),
              ],
            )
          ],
        )
      ],
    );
  }
}
