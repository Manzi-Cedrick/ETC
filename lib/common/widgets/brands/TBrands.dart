import 'package:etrade_actions/common/widgets/brands/TBrandCard.dart';
import 'package:etrade_actions/common/widgets/custom_shapes/circular_container.dart';
import 'package:etrade_actions/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBrands extends StatelessWidget {
  const TBrands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const ICircularContainer(
        backgroundColor: Colors.transparent,
        radius: TSizes.sm,
        child: TBrandCard()
      ),
    );
  }
}
