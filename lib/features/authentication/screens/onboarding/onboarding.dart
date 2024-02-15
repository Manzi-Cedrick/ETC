import 'package:etrade_actions/features/authentication/controllers/onboarding.controller.dart';
import 'package:etrade_actions/features/authentication/screens/onboarding/widgets/onboarding_bottom_navigation.dart';
import 'package:etrade_actions/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:etrade_actions/features/authentication/screens/onboarding/widgets/onboarding_page_widget.dart';
import 'package:etrade_actions/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:etrade_actions/utils/constants/image_strings.dart';
import 'package:etrade_actions/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                  image: TImages.onBoardingImage1,
                  title: TTexts.onBoardingTitle1,
                  subTitle: TTexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: TImages.onBoardingImage2,
                  title: TTexts.onBoardingSubTitle2,
                  subTitle: TTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: TImages.onBoardingImage3,
                  title: TTexts.onBoardingTitle2,
                  subTitle: TTexts.onBoardingSubTitle3)
            ],
          ),
          OnBoardingSkip(),
          OnBoardingBottomNavigation(),
          OnBoardingButton()
        ],
      ),
    );
  }
}
