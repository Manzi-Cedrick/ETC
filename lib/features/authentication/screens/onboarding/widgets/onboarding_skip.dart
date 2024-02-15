
import 'package:etrade_actions/features/authentication/controllers/onboarding.controller.dart';
import 'package:etrade_actions/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      child: TextButton(child: const Text('Skip'), onPressed: () => OnBoardingController.instance.skipPage()),
    );
  }
}

