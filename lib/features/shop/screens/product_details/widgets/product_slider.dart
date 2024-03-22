import 'package:etrade_actions/common/widgets/appbar/appbar.dart';
import 'package:etrade_actions/common/widgets/custom_shapes/curved_edge_widget.dart';
import 'package:etrade_actions/common/widgets/icon/circular_icon.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TCircularContainerImage.dart';
import 'package:etrade_actions/utils/constants/colors.dart';
import 'package:etrade_actions/utils/constants/image_strings.dart';
import 'package:etrade_actions/utils/constants/sizes.dart';
import 'package:etrade_actions/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkGrey : TColors.light,
        child: Stack(
          children: [
            // Main large image
            const SizedBox(
              height: 400,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(TSizes.productImageRadius),
                child: Image(image: AssetImage(TImages.productImage3)),
              ),
            ),

            // Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 100,
                child: ListView.separated(
                  itemBuilder: (_, index) => TRoundedImage(
                    width: 80,
                    image: TImages.productImage3,
                    backgroundColor: dark ? TColors.dark : TColors.white,
                    padding: TSizes.sm,
                    border: Border.all(
                      color: TColors.primary,
                      width: 2,
                    ),
                    radius: TSizes.sm,
                  ),
                  separatorBuilder: (_, __) => const SizedBox(width: TSizes.defaultSpace / 1.4),
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                ),
              ),
            ),

            TAppBar(
              showBackArrow: true,
              actions: [
                TCicularIcon(
                  icon: Iconsax.heart5,
                  onPressed: () {},
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
