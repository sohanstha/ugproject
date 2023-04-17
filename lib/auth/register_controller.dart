import 'package:fitness_gymapp/pages/register.dart';
import 'package:flutter/material.dart';

class RegisterController extends GetxController {
  static RegisterController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final name = TextEditingController();
  final phone = TextEditingController();

  void registerUser(String email, String password) {}
}

class GetxController {}
