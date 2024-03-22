import 'package:etrade_actions/common/widgets/brands/TBrands.dart';
import 'package:etrade_actions/common/widgets/tabs/TBottomTabBar.dart';
import 'package:etrade_actions/common/widgets/appbar/appbar.dart';
import 'package:etrade_actions/common/widgets/product/cart/cart_counter_menu.dart';
import 'package:etrade_actions/common/widgets/tabs/TCategoryTab.dart';
import 'package:etrade_actions/features/shop/screens/all_brands/all_brands.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TGriedViewLayout.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TSearchStore.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TSectionHeading.dart';
import 'package:etrade_actions/utils/constants/colors.dart';
import 'package:etrade_actions/utils/constants/sizes.dart';
import 'package:etrade_actions/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(
              onPressed: () {},
              iconColor: TColors.black,
            ),
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
                    backgroundColor: THelperFunctions.isDarkMode(context)
                        ? TColors.black
                        : TColors.white,
                    expandedHeight: 440,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.all(TSizes.defaultSpace),
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          TStoreSearch(
                            displayText: 'Search in store',
                            onTap: () {},
                            showBackground: false,
                            padding: EdgeInsets.zero,
                          ),
                          const SizedBox(height: TSizes.spaceBtwSections),
                          // Featured Brandings
                          TSectionHeading(
                              title: 'Featured Brandings',
                              showActionsButton: true,
                              onButtonPressed: () => Get.to(() => const AllBrands())),
                          const SizedBox(height: TSizes.spaceBtwItems / 1.5),
                          // Brandings
                          TGridViewLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return const TBrandCard(showBorder: true);
                            },
                          ),
                        ],
                      ),
                    ),
                    bottom: const TBottomBar(
                      tabs: [
                        Tab(child: Text('Sports')),
                        Tab(child: Text('Electronics')),
                        Tab(child: Text('Fashion')),
                        Tab(child: Text('Home')),
                        Tab(child: Text('Beauty')),
                      ],
                    ))
              ];
            },
            body: const TabBarView(
              children: [
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
              ],
            )),
      ),
    );
  }
}
