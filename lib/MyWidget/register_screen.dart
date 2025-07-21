import 'package:flutter/material.dart';
import 'welcome.dart';
import 'register_formuler.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F4F4),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: AppBar(
            backgroundColor: Color(0xFFF9F4F4),

            title: Text(
              "Connexion",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  // Logo
                  Image.asset(
                    'assets/images/ilimi_logo.png', // logo
                    height: 100,
                  ),
                  const SizedBox(height: 10),

                  RegisterFormuler(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
