import 'package:etrade_actions/common/widgets/brands/TBrands.dart';
import 'package:etrade_actions/common/widgets/custom_shapes/circular_container.dart';
import 'package:etrade_actions/features/shop/models/brand_model.dart';
import 'package:etrade_actions/utils/constants/colors.dart';
import 'package:etrade_actions/utils/constants/image_strings.dart';
import 'package:etrade_actions/utils/constants/sizes.dart';
import 'package:etrade_actions/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TBrandCardShowcase extends StatelessWidget {
  const TBrandCardShowcase({super.key, required this.images, required this.brandModel});

  final List<String> images;
  final BrandModel brandModel;
  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      radius: TSizes.md,
      padding: const EdgeInsets.all(TSizes.sm),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      backgroundColor: Colors.transparent,
      child: Column(
        children: [
          TBrandCard(showBorder: true, brand: brandModel,),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: TSizes.sm, horizontal: TSizes.md),
            child: Row(
              children: images.map((image) => brandTopProductImageWidget(image, context)).toList()
            ),
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: TRoundedContainer(
      height: 100,
      radius: TSizes.sm,
      backgroundColor: THelperFunctions.isDarkMode(context)
          ? TColors.darkGrey
          : TColors.light,
      margin: const EdgeInsets.only(right: TSizes.defaultSpace),
      padding: const EdgeInsets.all(TSizes.md),
      child: const Image(
        image: AssetImage(TImages.productImage3),
        fit: BoxFit.contain,
      ),
    ),
  );
}
