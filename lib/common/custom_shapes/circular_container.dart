import 'package:etrade_actions/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ICircularContainer extends StatelessWidget {
  const ICircularContainer(
      {super.key,
      this.width,
      this.height,
      this.backgroundColor,
      this.child,
      this.padding,
      this.radius = 200.0});

  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Widget? child;
  final double? padding;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: TColors.textWhite.withOpacity(0.1),
      ),
      child: child,
    );
  }
}
