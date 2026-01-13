import 'package:l6/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;
  var username = ''.obs;
  var password = ''.obs;

  void Login() async {
    isLoading = true.obs;
    if (username.value == "admin" && password.value == "12345") {
      Get.snackbar("Succesful!", "Login Goods");
    } else {
      Get.snackbar("Error", "Invalid Error !");
    }

    isLoading = false.obs;
  }
}
