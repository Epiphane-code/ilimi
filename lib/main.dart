import 'package:flutter/material.dart';
import 'package:ilimi/MyWidget/welcome.dart';
<<<<<<< HEAD
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // <-- Important
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
=======

void main() {
  runApp(const MyApp());
>>>>>>> parent of 2ef13ae (Abbas)
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ilimi',
      //theme: ThemeData(
      // colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      //),
      home: Welcome(),
    );
  }
}
