import 'package:etrade_actions/features/shop/screens/home/widgets/TSectionHeading.dart';
import 'package:etrade_actions/utils/constants/colors.dart';
import 'package:etrade_actions/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onButtonPressed: () {}),
        Text('Manzi Cedrick', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.phone,color: TColors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('+92-317-805-595-250', style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history,color: TColors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('South Liana, Maine 87695, USA', style: Theme.of(context).textTheme.bodyMedium,softWrap: true,)
          ],
        ),
      ],
    );
  }
}
