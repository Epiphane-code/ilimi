import 'package:flutter/material.dart';
import 'package:ilimi/MyWidget/home_body.dart';
import 'my_botton_navigation_bar.dart';

class MesModules extends Module {
  String nom_module;
  String categorie_module;
  String image_module;
  String taille_module;
  String duree_module;
  String note_module;
  int niveau;

  MesModules({
    required this.nom_module,
    required this.categorie_module,
    required this.image_module,
    required this.taille_module,
    required this.duree_module,
    required this.note_module,
    required this.niveau,
  }) : super(
         nom_module: nom_module,
         categorie_module: categorie_module,
         image_module: image_module,
         taille_module: taille_module,
         duree_module: duree_module,
         note_module: note_module,
       );
}

class CoursBody extends StatefulWidget {
  const CoursBody({super.key});

  @override
  State<CoursBody> createState() {
    return _CoursBodyState();
  }
}

class _CoursBodyState extends State<CoursBody> {
  late List<MesModules> mesModules;
  Color onGoing = Color(0xFFFFC727);
  Color completed = Color(0xFF5B271E);

  @override
  void initState() {
    super.initState();

    mesModules = [
      MesModules(
        nom_module: 'Flutter pour les débutants',
        categorie_module: 'Développement Mobile',
        image_module: 'assets/images/flutter.png',
        taille_module: '500 Mo',
        duree_module: '10 heures',
        note_module: '4.5',
        niveau: 60,
      ),
      MesModules(
        nom_module: 'Introduction à Dart',
        categorie_module: 'Langage de Programmation',
        image_module: 'assets/images/dart.png',
        taille_module: '300 Mo',
        duree_module: '5 heures',
        note_module: '4.0',
        niveau: 36,
      ),
      // Ajoutez d'autres modules ici
      MesModules(
        nom_module: 'React pour les débutants',
        categorie_module: 'Développement Web',
        image_module: 'assets/images/react.png',
        taille_module: '600 Mo',
        duree_module: '8 heures',
        note_module: '4.2',
        niveau: 70,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    onGoing = Color(0xFFFFC727);
                    completed = Color(0xFF5B271E);
                  });
                  // Action à effectuer lors de l'appui sur le bouton
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: onGoing,
                  fixedSize: const Size(150, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  "Ongoing",
                  style: TextStyle(color: Color(0xFFFFFFFF)),
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    onGoing = Color(0xFF5B271E);
                    completed = Color(0xFFFFC727);
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: completed,
                  fixedSize: const Size(150, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  "Completed",
                  style: TextStyle(color: Color(0xFFFFFFFF)),
                ),
              ), // Placeholder for alignment
            ],
          ),

          SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: mesModules.length,
            itemBuilder: (context, index) {
              MesModules module = mesModules[index];
              return Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: ListTile(
                  leading: Image.asset(
                    module.image_module,
                    width: 50,
                    height: 50,
                  ),
                  title: Text(module.nom_module),
                  subtitle: Text(
                    '${module.categorie_module} - ${module.duree_module}',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  trailing: Text(
                    module.note_module,
                    style: TextStyle(color: Colors.amber, fontSize: 16),
                  ),
                  onTap: () {
                    // Action à effectuer lors de l'appui sur le module
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyBottonNavigationBar(),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
