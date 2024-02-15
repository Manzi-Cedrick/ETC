import 'package:etrade_actions/features/shop/screens/home/widgets/TCircularImageContainer.dart';
import 'package:etrade_actions/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class TListViewCategoryOption extends StatelessWidget {
  const TListViewCategoryOption({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => const TVerticalImageText(image: TImages.sportIcon, title: 'Shoes')
      ),
    );
  }
}
