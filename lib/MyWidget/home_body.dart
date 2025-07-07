import 'package:flutter/material.dart';

class Module {
  String nom_module;
  String categorie_module;
  String image_module;
  String taille_module;
  String duree_module;
  String note_module;

  Module({
    required this.nom_module,
    required this.categorie_module,
    required this.image_module,
    required this.taille_module,
    required this.duree_module,
    required this.note_module,
  });
}

class Home2screen extends StatefulWidget {
  const Home2screen({super.key});

  @override
  State<Home2screen> createState() => _Home2screenState();
}

class _Home2screenState extends State<Home2screen> {
  int selectedIndex = 0;
  List<Module> modules = [];

  final List<String> menuItems = [
    'Tous',
    'Populaires',
    'Graphic Design',
    'Developpement',
    'Informatique',
  ];

  @override
  void initState() {
    modules.add(
      Module(
        nom_module: 'Comment creer un site web avec Html et C ss',
        categorie_module: 'Developpement Web',
        image_module: 'html.png',
        taille_module: '27 Page',
        duree_module: '72h',
        note_module: '3.5',
      ),
    );
    modules.add(
      Module(
        nom_module: 'Bureautique',
        categorie_module: 'Informatique',
        image_module: 'bureautique.png',
        taille_module: '45 Page',
        duree_module: '79h',
        note_module: '5',
      ),
    );
    modules.add(
      Module(
        nom_module: 'Flutter',
        categorie_module: 'Developpement mobile',
        image_module: 'flutter.png',
        taille_module: '50 Page',
        duree_module: '10h',
        note_module: '3.1',
      ),
    );
    modules.add(
      Module(
        nom_module: 'Dessin et Numerique',
        categorie_module: 'Arts',
        image_module: 'dessin.png',
        taille_module: '150 Page',
        duree_module: '72h',
        note_module: '2.5',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 150,
          color: Color(0xFF0EA5E9),
          child: Stack(
            children: [
              Positioned(
                top: 10,
                left: 30,
                child: Icon(Icons.star, color: Colors.yellow, size: 14),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Icon(Icons.star, color: Colors.yellow, size: 24),
              ),
              Positioned(
                top: 30,
                left: 300,
                child: Icon(Icons.star, color: Colors.yellow, size: 14),
              ),
              Positioned(
                top: 80,
                right: 20,
                child: Icon(Icons.star, color: Colors.yellow[200], size: 20),
              ),
              Positioned(
                bottom: 40,
                left: 60,
                child: Icon(Icons.star, color: Colors.white, size: 18),
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 17, right: 50, top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Bonjour,",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "Bienvenue",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.notifications,
                              color: Color(0xFF5B271E),
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 40,
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      padding: EdgeInsets.symmetric(horizontal: 17),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: 1,
                            blurRadius: 6,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'chercher un thème',
                          prefixIcon: Icon(Icons.search),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(
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
                  ],
                ),
              ),
            ],
          ),
        ),
        //SizedBox(height: 10),
        /*Container(
          color: Color(0xFFF9F4F4),
          child: Text(
            "Cours",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),*/
        SizedBox(height: 20),
        SizedBox(
          height: 37,
          child: ListView.builder(
            shrinkWrap: true,
            //physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: menuItems.length,
            itemBuilder: (context, index) {
              bool isSelected = selectedIndex == index;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(
                    color: isSelected ? Color(0xFFFFC727) : Color(0xFF5B271E),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      menuItems[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),

        SizedBox(height: 10),
        // Vous pouvez ajouter ici un contenu dynamique selon le bouton sélectionné
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Center(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: modules.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 310,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 0,
                        vertical: 0,
                      ),

                      padding: const EdgeInsets.symmetric(
                        horizontal: 0,
                        vertical: 0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        // border: Border.all(color: Colors.blueAccent),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/${modules[index].image_module}',
                              height: 230,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            modules[index].categorie_module,
                            style: TextStyle(color: Color(0xFF5B271E)),
                          ),

                          Text(
                            modules[index].nom_module,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(modules[index].taille_module),
                              Text(
                                "|",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star, size: 15),
                                  SizedBox(width: 10),
                                  Text(modules[index].note_module),
                                ],
                              ),
                              Text(
                                "|",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              Text(modules[index].duree_module),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
