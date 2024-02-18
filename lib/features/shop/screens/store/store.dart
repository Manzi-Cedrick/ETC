import 'package:etrade_actions/common/appbar/appbar.dart';
import 'package:etrade_actions/common/custom_shapes/circular_container.dart';
import 'package:etrade_actions/common/icon/circular_icon.dart';
import 'package:etrade_actions/common/product/cart/cart_counter_menu.dart';
import 'package:etrade_actions/common/product/cart/t_brand_title_text_with_vertical_icon.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TPromoSection.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TSearchStore.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TSectionHeading.dart';
import 'package:etrade_actions/utils/constants/colors.dart';
import 'package:etrade_actions/utils/constants/enums.dart';
import 'package:etrade_actions/utils/constants/image_strings.dart';
import 'package:etrade_actions/utils/constants/sizes.dart';
import 'package:etrade_actions/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCartCounterIcon(onPressed: () {}, iconColor: TColors.black,),
        ], 
        showBackArrow: false,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              floating: true,
              automaticallyImplyLeading: false,
              backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.sm),
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    TStoreSearch(
                      displayText: 'Search in store',
                      onTap: () {},
                      showBackground: false,
                      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    // Featured Brandings
                    TSectionHeading(title: 'Featured Brandings', showActionsButton: true, onButtonPressed: () {}),
                    const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                    ICircularContainer(
                      padding: const EdgeInsets.all(TSizes.md),
                      backgroundColor: Colors.transparent,
                      child: Row(
                        children: [
                          TPromoSection(
                            isNetworkImage: false,
                            radius: 10,
                            image: TImages.clothIcon,
                            onTap: () {},
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems / 2),
                          Column(
                            children: [
                              const TBrandTitleWithVerificationIcon(
                                title: 'Nike',
                                brandTextSize: TextSizes.large,
                              ),
                              Text('256 products', style: Theme.of(context).textTheme.labelMedium),
                            ],
                          )
                        ],
                      ),
                    )

                  ],
                )
              ),
            )
          ];
        },
        body: Container(

        ),
      ),
    );
  }
}