
import 'package:etrade_actions/features/shop/screens/home/widgets/TSectionHeading.dart';
import 'package:etrade_actions/features/shop/screens/product_details/widgets/bottom_cart_navigation.dart';
import 'package:etrade_actions/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:etrade_actions/features/shop/screens/product_details/widgets/product_metadata.dart';
import 'package:etrade_actions/features/shop/screens/product_details/widgets/product_ratings_share.dart';
import 'package:etrade_actions/features/shop/screens/product_details/widgets/product_slider.dart';
import 'package:etrade_actions/features/shop/screens/product_reviews/product_review_screen.dart';
import 'package:etrade_actions/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Image Slider
            const TProductImageSlider(),

            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  // Rating * Share
                  const TRatingsAndShare(),
                  // Price and title
                  const TProductMetaData(),
                  // Attribute
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: () {}, child: const Text('Checkout')),
                  ),

                  const SizedBox(height: TSizes.spaceBtwItems),

                  const TSectionHeading(title: 'Description', showActionsButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a product description for Blue Nike Sleeve less vest. There are more things that can be added as we gradually grow, we are eager to give service to our customers.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  // Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(title: 'Reviews (199)', showActionsButton: false),
                      IconButton(onPressed: () => Get.to(const ProductReview()), icon: const Icon(Iconsax.arrow_right_3, size: 18),)
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  
                ],
              ),
            )

            /// Product details
          ],
        ),
      ),
    );
  }
}
