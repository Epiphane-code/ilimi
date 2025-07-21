import 'package:flutter/material.dart';
//import 'class.dart';

class DevFormateur extends StatelessWidget {
  const DevFormateur({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Devenir formateur',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      // home: Welcome(),
    );
  }
}
