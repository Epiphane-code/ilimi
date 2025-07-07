/*import 'package:flutter/material.dart';



class Module extends StatefulWidget {
  final String nom_module;
  final String categorie_module;
  final String image_module;
  final String taille_module;
  final String duree_module;
  final String note_module;

  const Module({
    super.key,
    required this.nom_module,
    required this.categorie_module,
    required this.image_module,
    required this.taille_module,
    required this.duree_module,
    required this.note_module,
  });



  @override
  State<Module> createState() => _ModuleState();
}


class _ModuleState extends State<Module> {
  List<Module> module = [];

  @override
  void ajouter_module(String nm, String cm, String im, String tm, String dm, String ntm){
    setState(() {
      module.add(Module(
        nom_module: nm,
        categorie_module: cm,
        image_module: im,
        taille_module: tm,
        duree_module: dm,
        note_module: ntm,
      ));
    });

  }

  @override
  Widget build(BuildContext context) {
    ajouter_module('Comment creer un site web avec Html et C ss', 'Developpement Web', 'html.png', '27 Page', '72h', 'Vide');
    ajouter_module('Bureautique', 'Informatique', 'bureautique.png','57 Page', '50h', 'Vide');
    ajouter_module('Fttdtdlutter et Dart', 'Developpement mobile', 'flutter.png','29 Page', '32h', 'Vide');
    ajouter_module('Journalisme', 'Communication', 'journalisme.png','21 Page', '12h', 'Vide');
    ajouter_module('Dessin et Numerique', 'Arts', 'dessin.png','237 Page', '60h', 'Vide');
    return Center(
      child: ListView.builder(
        itemCount: module.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.blueAccent),
            ),
            child: Column(
              children: [
                Image.asset('assets/images/$module[index].nom_image', height: 50,),
                Text(module[index].categorie_module),
                Text(module[index].nom_module),
                Row(
                  children: [
                    Text(module[index].taille_module),
                    const SizedBox(height: 15),
                    Icon(Icons.start),
                    const SizedBox(height: 2),
                    Text(module[index].note_module),
                    const SizedBox(height: 15),
                    Text(module[index].duree_module),

                  ],
                )



              ],
            ),


          );
        },
      ),
    );
  }
}
*/
