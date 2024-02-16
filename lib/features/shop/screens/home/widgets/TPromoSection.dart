import 'package:etrade_actions/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TPromoSection extends StatelessWidget {
  const TPromoSection({
    Key? key,
    this.width,
    this.height,
    required this.image,
    this.isNetworkImage = false,
    this.onTap,
    required this.radius,

  }) : super(key: key);

  final double? width, height;
  final double radius;
  final String image;
  final bool? isNetworkImage;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        margin: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Image(
          image: AssetImage(image),
          // fit: BoxFit.cover,
        ),
      ),
    );
  }
}
