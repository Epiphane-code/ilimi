import 'package:flutter/material.dart';
import 'package:ilimi/MyWidget/class.dart';
//import 'welcome.dart';
import 'ajouter_cours_formuler.dart';

class Ajouter extends StatelessWidget {
  const Ajouter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F4F4),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: AppBar(
            backgroundColor: MesCouleurs.blancPrincipale,

            title: Text(
              "Nouveau cours",
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

                children: [const SizedBox(height: 10), AjouterFormuler()],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
