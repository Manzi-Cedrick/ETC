import 'package:flutter/material.dart';

class TCircularButton extends StatelessWidget {
  const TCircularButton({super.key, this.onTap, required this.icon, this.color});

  final VoidCallback? onTap;
  final IconData icon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      color: color,
      onPressed: onTap,
    );
  }
}
