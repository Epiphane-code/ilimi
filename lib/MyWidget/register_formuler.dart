import 'package:flutter/material.dart';
import 'package:ilimi/MyWidget/login_screen.dart';

class RegisterFormuler extends StatefulWidget {
  const RegisterFormuler({super.key});

  @override
  State<RegisterFormuler> createState() => _RegisterFormulerState();
}

class _RegisterFormulerState extends State<RegisterFormuler> {
  String? selectedRole; // "apprenant" ou "formateur"
  @override
  Widget build(BuildContext context) {
    return (Container(
      margin: EdgeInsets.all(27),
      child: Form(
        child: Column(
          children: [
            Text(
              "Commençon. !",
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFF202244),
                fontFamily: 'Jost',
                fontWeight: FontWeight.w600,
                height: 1.0,
                letterSpacing: 0.0,
              ),
            ),

            Text("Créez un compte pour suivre vos cours"),
            const SizedBox(height: 10),
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
                decoration: InputDecoration(
                  hintText: 'Entrez votre adresse mail',
                  filled: true,
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

            const SizedBox(height: 10),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🟦 Prénom
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Prénom',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),

                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.3),
                              blurRadius: 6,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Entrez votre Prenom',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 16),

                // 🟩 Nom
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Nom',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),

                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.3),
                              blurRadius: 6,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Entrez votre Nom',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),
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
                decoration: InputDecoration(
                  hintText: 'Entrez votre mot de passe',
                  filled: true,
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

            const SizedBox(height: 10),
            Center(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Confirmation",
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
                decoration: InputDecoration(
                  hintText: 'Confirmez votre mot de passe',
                  filled: true,
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

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: selectedRole == 'apprenant',
                        onChanged: (bool? value) {
                          setState(() {
                            selectedRole = value! ? 'apprenant' : null;
                          });
                        },
                      ),
                      const Text(
                        'Apprenant',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  SizedBox(width: 20),

                  Row(
                    children: [
                      Checkbox(
                        value: selectedRole == 'formateur',
                        onChanged: (bool? value) {
                          setState(() {
                            selectedRole = value! ? 'formateur' : null;
                          });
                        },
                      ),
                      const Text(
                        'Formateur',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Action à effectuer lors de l'appui sur le bouton
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                fixedSize: const Size(250, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                "Créer un compte",
                style: TextStyle(color: Color(0xFFFFFFFF)),
              ),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text("Vous avez dèja un compte?  "),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Se connecter",
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
