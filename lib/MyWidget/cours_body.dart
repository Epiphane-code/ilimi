import 'package:flutter/material.dart';
import 'class.dart';

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
        niveau: 6,
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
      MesModules(
        nom_module: 'Introduction à la programmation',
        categorie_module: 'Informatique',
        image_module: 'assets/images/programmation.png',
        taille_module: '700 Mo',
        duree_module: '12 heures',
        note_module: '4.8',
        niveau: 80,
      ),
      MesModules(
        nom_module: 'Design UI/UX',
        categorie_module: 'Design',
        image_module: 'assets/images/design.png',
        taille_module: '400 Mo',
        duree_module: '6 heures',
        note_module: '4.6',
        niveau: 50,
      ),
      MesModules(
        nom_module: 'Bases de données avec SQL',
        categorie_module: 'Bases de données',
        image_module: 'assets/images/sql.png',
        taille_module: '550 Mo',
        duree_module: '7 heures',
        note_module: '4.3',
        niveau: 20,
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
                  title: Text(
                    module.nom_module,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        module.categorie_module,
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      Text(module.duree_module, style: TextStyle(fontSize: 14)),
                      Text(
                        module.taille_module,
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      LinearProgressIndicator(
                        value: module.niveau / 100, // 70%
                        backgroundColor: Colors.grey[300],
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                      ),
                    ],
                  ),
                  trailing: Text(
                    module.note_module,
                    style: TextStyle(color: Colors.amber, fontSize: 16),
                  ),
                  onTap: () {
                    // Action à effectuer lors de l'appui sur le module
                    /* Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyBottonNavigationBar(),
                      ),
                    ); */
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
