import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F4F4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  const SizedBox(height: 40),
                  // Logo
                  Image.asset('assets/images/ilimi_logo.png'),
                  const SizedBox(height: 40),

                  // Slogan
                  const Text(
                    "Là où l’école dépasse les murs et le savoir dépasse les limites.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 40),

                  // Bouton Connexion
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5A231F), // marron foncé
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 40,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 6,
                    ),
                    child: const Text(
                      'Connexion',
                      style: TextStyle(
                        color: Color(0xFFFFC72C), // jaune doré
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    'ou',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),

                  const SizedBox(height: 16),

                  // Bouton Inscription
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5A231F), // marron foncé
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 40,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 6,
                    ),
                    child: const Text(
                      'Inscription',
                      style: TextStyle(
                        color: Color(0xFFFFC72C), // jaune doré
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
