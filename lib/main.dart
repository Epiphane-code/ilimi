import 'package:flutter/material.dart';
import 'package:ilimi/MyWidget/welcome.dart';

void main() {
  runApp(const MyApp());
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
