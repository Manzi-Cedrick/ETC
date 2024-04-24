import 'package:etrade_actions/common/widgets/loaders/loaders.dart';
import 'package:etrade_actions/common/widgets/popups/full_screen_loader.dart';
import 'package:etrade_actions/data/repositories/user/user_repository.dart';
import 'package:etrade_actions/features/personalization/controllers/user_controller.dart';
import 'package:etrade_actions/features/personalization/screens/profile/profile.dart';
import 'package:etrade_actions/utils/constants/image_strings.dart';
import 'package:etrade_actions/utils/helpers/network_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateNameController extends GetxController {
  static UpdateNameController get instance => Get.find();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final GlobalKey<FormState> updateNameFormKey = GlobalKey<FormState>();
  final userController = UserController.instance;
  final userRepository = Get.put(UserRepository());

  @override
  void onInit() {
    initializeNames();
    super.onInit();
  }

  Future<void> initializeNames() async {
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
  }

  Future<void> updateUserName() async {
    try {
      TFullScreenLoader.openLoadingDialog('We are updating your information ...', TImages.docerAnimation);

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      if (!updateNameFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      Map<String, dynamic> name = {
        'FirstName': firstName.text.trim(),
        'LastName': lastName.text.trim(),
      };
      await userRepository.updateSingleField(name);

      userController.user.value.firstName = firstName.text.trim();  
      userController.user.value.lastName = lastName.text.trim();

      TFullScreenLoader.stopLoading();
      TLoaders.successSnackBar(title: 'Congratulations', message: 'Your name has been updated');

      Get.off(() => const ProfileScreen());

    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Error', message: e.toString());
    } 
  }
}