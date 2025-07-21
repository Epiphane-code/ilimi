import 'package:flutter/material.dart';
import 'package:ilimi/MyWidget/authentification_repo.dart';
import 'package:ilimi/MyWidget/reset_password.dart';
import 'register_screen.dart';

class LoginFormuler extends StatefulWidget {
  const LoginFormuler({super.key});

  @override
  State<LoginFormuler> createState() => _LoginFormulerState();
}

class _LoginFormulerState extends State<LoginFormuler> {
  final TextEditingController passController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (Container(
      margin: EdgeInsets.all(27),
      child: Form(
        child: Column(
          children: [
            Text(
              "Bon retour parmi nous !",
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFF202244),
                fontFamily: 'Jost',
                fontWeight: FontWeight.w600,
                height: 1.0,
                letterSpacing: 0.0,
              ),
            ),

            const SizedBox(height: 30),
            Text("Connectez vous pour continuer l'apprentissage"),
            const SizedBox(height: 30),
            Center(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(
                      alpha: 0.3,
                    ), // couleur de l’ombre
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: Offset(0, 4), // position de l’ombre (x, y)
                  ),
                ],
              ),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Entrez votre adresse mail',
                  filled: false,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
            Center(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Mot de passe",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(
                      alpha: 0.3,
                    ), // couleur de l’ombre
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: Offset(0, 4), // position de l’ombre (x, y)
                  ),
                ],
              ),
              child: TextFormField(
                controller: passController,
                obscureText: true,
                cursorColor: Colors.blue,
                decoration: InputDecoration(
                  hintText: 'Entrez votre mot de passe',
                  filled: false,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  // Action pour mot de passe oublié
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ResetPassword(), // Remplacez par votre page de réinitialisation de mot de passe
                    ),
                  );
                },
                child: const Text(
                  'Mot de passe oublié ?',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                AuthentificationRepo.instance.loginUserWithEmailAndPassword(emailController.text, passController.text);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                fixedSize: const Size(250, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                "Se connecter",
                style: TextStyle(color: Color(0xFFFFFFFF)),
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text("Vous n'avez pas de compte?  "),
                  GestureDetector(
                    onTap: () {
                      Future.delayed(Duration.zero, () {
                        if (context.mounted) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Register()),
                          );
                        }
                      });
                    },
                    child: const Text(
                      "S'inscrire",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
