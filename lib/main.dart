import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ilimi/MyWidget/authentification_repo.dart';
import 'package:ilimi/MyWidget/welcome.dart';
import 'package:ilimi/firebase_options.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
    .then((value) => Get.put(AuthentificationRepo()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ilimi',
      //theme: ThemeData(
      // colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      //),
      home: Welcome(),
    );
  }
}
