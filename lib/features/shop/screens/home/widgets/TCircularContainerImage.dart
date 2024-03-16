import 'package:etrade_actions/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCircularContainerImage extends StatelessWidget {
  const TCircularContainerImage({
    Key? key,
    this.width = 56,
    this.height = 56,
    this.overlayColor,
    this.backgroundColor,
    required this.image,
    this.isNetworkImage = false,
    this.onTap,
    this.radius = 100,
    this.fit = BoxFit.cover,
    this.padding,
  }) : super(key: key);

  final double? width, height, padding;
  final double radius;
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final VoidCallback? onTap;
  final Color? overlayColor;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.all(padding ?? TSizes.sm),
        margin: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Image(
          fit: fit,
          image: isNetworkImage ? NetworkImage(image) : AssetImage(image) as ImageProvider,
          color: overlayColor,
          // fit: BoxFit.cover,
        ),
      ),
    );
  }
}
