import 'package:etrade_actions/features/authentication/screens/login/login.dart';
import 'package:etrade_actions/features/authentication/screens/signup/widgets/terms_policy.dart';
import 'package:etrade_actions/features/authentication/screens/verify-email/verify-email.dart';
import 'package:etrade_actions/utils/constants/sizes.dart';
import 'package:etrade_actions/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.user),
                        labelText: TTexts.firstName),
                  ),
                ),
                const SizedBox(width: TSizes.spaceBtwItems),
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user),
                      labelText: TTexts.lastName,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.user_edit),
                  labelText: TTexts.username),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct), labelText: TTexts.email),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.phone ,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.call), labelText: TTexts.phoneNo, ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: TTexts.password),
            ),
            // Terms of Agreement
            const TTermsPolicy(),
            // Create Account
            const SizedBox(height: TSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const VerifyEmailScreen()), child: const Text(TTexts.createAccount)),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(() => const LoginScreen()), child: const Text(TTexts.signIn)),
            ),
          ],
        ),
      ),
    );
  }
}
