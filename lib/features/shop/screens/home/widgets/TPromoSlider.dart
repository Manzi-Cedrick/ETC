import 'package:carousel_slider/carousel_slider.dart';
import 'package:etrade_actions/common/custom_shapes/circular_container.dart';
import 'package:etrade_actions/features/shop/controllers/home_controller.dart';
import 'package:etrade_actions/features/shop/screens/home/widgets/TPromoSection.dart';
import 'package:etrade_actions/utils/constants/colors.dart';
import 'package:etrade_actions/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({super.key, required this.banners});

  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 1.8,
            enlargeCenterPage: true,
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndex(index),
          ),
          items: banners.map((e) => TPromoSection(image: e, onTap: () {}, radius: TSizes.md,)).toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwItems - 10),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  ICircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carouselCurrentIndex.value == i ? TColors.primary : TColors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
