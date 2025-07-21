import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilimi/MyWidget/class.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createUser(Users user) async {
    await _db.collection('Users').add(user.toJson())
    .whenComplete(
      () => Get.snackbar("Success", "User created successfully",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      ),
    )
    .catchError((error, stackTrace) {
      Get.snackbar("Error", "Failed to create user. Try again",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    });
  }
}