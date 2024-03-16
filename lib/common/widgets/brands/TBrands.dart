import 'package:etrade_actions/common/widgets/custom_shapes/circular_container.dart';
import 'package:etrade_actions/common/widgets/product/cart/t_brand_title_text_with_vertical_icon.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TCircularContainerImage.dart';
import 'package:etrade_actions/utils/constants/colors.dart';
import 'package:etrade_actions/utils/constants/enums.dart';
import 'package:etrade_actions/utils/constants/image_strings.dart';
import 'package:etrade_actions/utils/constants/sizes.dart';
import 'package:etrade_actions/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({Key? key, this.onTap, required this.showBorder})
      : super(key: key);

  final void Function()? onTap;
  final bool showBorder;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      // Container Design
      child: TRoundedContainer(
        backgroundColor: Colors.transparent,
        radius: TSizes.sm,
        showBorder: showBorder,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TRoundedImage(
              isNetworkImage: false,
              image: TImages.clothIcon,
              onTap: () {},
              fit: BoxFit.contain,
              width: 38,
              overlayColor: THelperFunctions.isDarkMode(context)
                  ? TColors.white
                  : TColors.dark,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TBrandTitleWithVerificationIcon(
                  title: 'Nike',
                  brandTextSize: TextSizes.large,
                  textAlign: TextAlign.start,
                ),
                Text('256 products',
                    style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
