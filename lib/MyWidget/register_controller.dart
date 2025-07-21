import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilimi/MyWidget/authentification_repo.dart';

class RegisterController extends GetxController {
  static RegisterController get instance => Get.find();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final phoneNumber = TextEditingController();
  final nom = TextEditingController();
  final prenom = TextEditingController();
  // Le rôle sélectionné
  final RxString selectedRole = ''.obs;

  void setRole(String role) {
    if (selectedRole.value == role) {
      selectedRole.value = '';
    } else {
      selectedRole.value = role;
    }
  }

  // Vérifie si un rôle est actuellement sélectionné
  bool isRoleSelected(String role) => selectedRole.value == role;

  // Libérer les ressources
  @override
  void onClose() {
    email.dispose();
    prenom.dispose();
    nom.dispose();
    password.dispose();
    confirmPassword.dispose();
    super.onClose();
  }

  void registerUser(String email, String password, String confirmPassword, String fullName, String selectedRole) {
    AuthentificationRepo.instance.createUserWithEmailAndPassword(email, password);
  }

  void phoneAuthentification(String phoneNumber) {
    AuthentificationRepo.instance.phoneAuthentification(phoneNumber);
  }

}