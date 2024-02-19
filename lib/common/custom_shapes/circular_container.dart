import 'package:etrade_actions/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ICircularContainer extends StatelessWidget {
  const ICircularContainer({
    super.key,
    this.width,
    this.height,
    this.backgroundColor,
    this.child,
    this.padding,
    this.radius = 200.0,
    this.margin,
    this.onTap,
  });

  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final double radius;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        margin: margin,
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            color: TColors.darkGrey.withOpacity(0.5),
          ),
          color: backgroundColor,
        ),
        child: child,
      ),
    );
  }
}
