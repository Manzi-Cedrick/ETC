import 'package:etrade_actions/common/widgets/custom_shapes/circular_container.dart';
import 'package:etrade_actions/common/widgets/texts/product_title_text.dart';
import 'package:etrade_actions/common/widgets/icon/circular_icon.dart';
import 'package:etrade_actions/features/shop/controllers/product_controller.dart';
import 'package:etrade_actions/features/shop/models/product_model.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TCircularContainerImage.dart';
import 'package:etrade_actions/features/shop/screens/product_details/product_detail.dart';
import 'package:etrade_actions/utils/constants/colors.dart';
import 'package:etrade_actions/utils/constants/enums.dart';
import 'package:etrade_actions/utils/constants/image_strings.dart';
import 'package:etrade_actions/utils/constants/shadow.dart';
import 'package:etrade_actions/utils/constants/sizes.dart';
import 'package:etrade_actions/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TProductCartVertical extends StatelessWidget {
  const TProductCartVertical({super.key, required this.product});

  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    final controller = ProductController.instance;
    final salePercentage =
        controller.calculateSalePercentage(product.price, product.salePrice);
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => ProductDetail(
            product: product,
          )),
      child: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(TSizes.sm),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.white,
        ),
        child: Column(
          children: [
            TRoundedContainer(
              backgroundColor: dark ? TColors.dark : TColors.light,
              radius: TSizes.md,
              child: Stack(
                children: [
                  TRoundedImage(
                    image: product.thumbnail,
                    onTap: () {},
                    height: 140,
                    width: 600,
                    isNetworkImage: true,
                    fit: BoxFit.contain,
                    radius: TSizes.sm,
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      child: Padding(
                        padding: const EdgeInsets.all(TSizes.sm - 2),
                        child: Center(
                          child: Text(
                            '$salePercentage',
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
                      child: TCicularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                        onPressed: () {},
                        backgroundColor: TColors.white.withOpacity(0.5),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title: product.title,
                    smallSize: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Text(
                        product.brand!.name,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
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
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            if (product.productType ==
                                    ProductType.single.toString() &&
                                product.salePrice > 0)
                              Padding(
                                padding: const EdgeInsets.only(left: TSizes.sm),
                                child: Text(
                                  'USD ${product.salePrice.toString()}',
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                              ), // Text
                            Padding(
                              padding: const EdgeInsets.only(left: TSizes.sm),
                              child: Text('USD ${controller.getProductPrice(product)}'),
                            ),
                          ],
                        ),
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
