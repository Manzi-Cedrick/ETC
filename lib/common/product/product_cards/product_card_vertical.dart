import 'package:etrade_actions/common/custom_shapes/circular_container.dart';
import 'package:etrade_actions/common/icon/circular_icon.dart';
import 'package:etrade_actions/common/texts/product_title_text.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TPromoSection.dart';
import 'package:etrade_actions/utils/constants/colors.dart';
import 'package:etrade_actions/utils/constants/image_strings.dart';
import 'package:etrade_actions/utils/constants/shadow.dart';
import 'package:etrade_actions/utils/constants/sizes.dart';
import 'package:etrade_actions/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductCartVertical extends StatelessWidget {
  const TProductCartVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(TSizes.sm),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.white,
        ),
        child: Column(
          children: [
            ICircularContainer(
              backgroundColor: dark ? TColors.dark : TColors.light,
              radius: TSizes.lg,
              child: Stack(
                children: [
                  TPromoSection(
                    image: TImages.productImage1,
                    onTap: () {},
                    height: 150,
                    radius: TSizes.sm,
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: ICircularContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      child: Padding(
                        padding: const EdgeInsets.all(TSizes.sm - 2),
                        child: Center(
                          child: Text(
                            '25%',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .apply(color: TColors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: dark
                            ? TColors.dark.withOpacity(0.9)
                            : TColors.light.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: TCircularButton(
                          icon: Iconsax.heart5,
                          onTap: () {},
                          color: Colors.red),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                children: [
                  const TProductTitleText(
                    title: 'Nike Jordan Low 1',
                    smallSize: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .apply(color: dark ? TColors.white : TColors.black),
                      ),
                      const SizedBox(
                        width: TSizes.sm,
                      ),
                      const Icon(
                        Iconsax.verify5,
                        color: TColors.primary,
                        size: TSizes.iconSm,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$120',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .apply(color: TColors.primary),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(TSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: TColors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
