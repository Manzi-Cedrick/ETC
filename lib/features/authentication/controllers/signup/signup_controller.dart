import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final RxBool isPasswordVisible = true.obs;
  final RxBool isConfirmPasswordVisible = true.obs;

  void togglePasswordVisibility() => isPasswordVisible.value = !isPasswordVisible.value;
  void toggleConfirmPasswordVisibility() => isConfirmPasswordVisible.value = !isConfirmPasswordVisible.value;

  final email = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  Future<void> signup() async {
    try {
      
      
    } catch (e) {
      
    }
  }
}