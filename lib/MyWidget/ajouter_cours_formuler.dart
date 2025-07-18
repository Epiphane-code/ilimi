import 'package:flutter/material.dart';
import 'package:ilimi/MyWidget/login_screen.dart';
import 'class.dart';

class AjouterFormuler extends StatefulWidget {
  const AjouterFormuler({super.key});

  @override
  State<AjouterFormuler> createState() => _RegisterFormulerState();
}

class _RegisterFormulerState extends State<AjouterFormuler> {
  String? selectedRole; // "apprenant" ou "formateur"
  @override
  Widget build(BuildContext context) {
    return (Container(
      margin: EdgeInsets.all(27),
      child: Form(
        child: Column(
          children: [
            Center(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Nom du cours",
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
                  hintText: 'Nom du cours',
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
                        'Description',
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
                            // hintText: 'Description',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 50,
                              vertical: 100,
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
                    children: [],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),
            Center(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Partition",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                //margin: EdgeInsets.only(left: 0),
                width: 100,
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
                    // hintText: 'Entrez votre mot de passe',
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
            ),

            const SizedBox(height: 10),
            Center(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Vidéo",
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
                  // hintText: 'Confirmez votre mot de passe',
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
                backgroundColor: MesCouleurs.bleuPrincipale,
                fixedSize: const Size(200, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text("Save", style: TextStyle(color: Color(0xFFFFFFFF))),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(scrollDirection: Axis.horizontal),
          ],
        ),
      ),
    ));
  }
}
