import 'package:etrade_actions/utils/constants/colors.dart';
import 'package:etrade_actions/utils/constants/text_strings.dart';
import 'package:etrade_actions/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TTermsPolicy extends StatelessWidget {
  const TTermsPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Checkbox(value: true, onChanged: (value) {}),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${TTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.labelSmall),
          TextSpan(
              text: '${TTexts.privacyPolicy} ',
              style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: dark ? TColors.white : TColors.primary,
                  decoration: TextDecoration.underline)),
          TextSpan(
              text: '${TTexts.and} ',
              style: Theme.of(context).textTheme.labelSmall),
          TextSpan(
              text: TTexts.termsOfUse,
              style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: dark ? TColors.white : TColors.primary,
                  decoration: TextDecoration.underline))
        ]))
      ],
    );
  }
}
