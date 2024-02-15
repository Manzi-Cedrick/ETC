import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({super.key, this.textColor, this.showActionsButton = true, required this.title, this.buttonTitle = 'View all', this.onButtonPressed});

  final Color? textColor;
  final bool showActionsButton;
  final String title, buttonTitle;
  final VoidCallback? onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: Colors.white),
          overflow: TextOverflow.ellipsis,
        ),
        if(showActionsButton) TextButton(onPressed: onButtonPressed, child: Text(buttonTitle))
      ],
    );
  }
}
