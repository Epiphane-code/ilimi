import 'package:flutter/material.dart';
import 'package:ilimi/MyWidget/ajouter_cours_screen.dart';
import 'package:ilimi/MyWidget/class.dart';
import 'accueil_formateur.dart';
<<<<<<< HEAD
//import 'forum_formateur.dart';
=======
>>>>>>> f93f5ac (Omar)
import 'forum_f.dart';

class AccueilFormateur extends StatefulWidget {
  const AccueilFormateur({super.key});

  @override
  State<AccueilFormateur> createState() => _AccueilFormateurState();
}

class _AccueilFormateurState extends State<AccueilFormateur> {
  List<Widget> contenuFormateur = [
    ContenuAccueilFormateur(),
    ContenuAccueilFormateur3(),
  ];
  late List<BottomNavigationBarItem> listBottonici;
  late Widget contenuIci;
  Color color1 = MesCouleurs.jaunePrincipale;
  Color color2 = Colors.white;
  late Color colorSelected;
  late Color colorUnselected;
  Color appColor = MesCouleurs.bleuPrincipale;
  String commentaire = '//';

  @override
  void initState() {
    super.initState();
    contenuIci = ContenuAccueilFormateur();
    colorSelected = color1;
    colorUnselected = color2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Ajouter()),
          );
        },
        backgroundColor: MesCouleurs.jaunePrincipale,
        child: Icon(Icons.add, size: 55, color: MesCouleurs.marronPrincipale),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: MesCouleurs.blancPrincipale,
      appBar: AppBar(
        centerTitle: true,
        leading: Text(""),
        title: Text(
          "Mon espace",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: MesCouleurs.marronPrincipale,
          ),
        ),
        // actions: [Icon(Icons.settings, size: 30)],
        backgroundColor: appColor,
      ),
      body: Column(
        children: [
          //ContenuAccueilFormateur(),
          Expanded(flex: 8, child: contenuIci),

          // Expanded(child: Text("sa")),
          Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 0),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      height: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(100),
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,

                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: colorSelected,
                                    width: 1,
                                  ),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      colorSelected = color1;
                                      colorUnselected = color2;
                                      contenuIci = ContenuAccueilFormateur();
                                      appColor = MesCouleurs.bleuPrincipale;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.home,
                                    size: 25,
                                    color: MesCouleurs.marronPrincipale,
                                  ),
                                ),
                              ),
                              Text(
                                "Accueil",
                                style: TextStyle(
                                  color: MesCouleurs.marronPrincipale,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(width: 5),

                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: colorUnselected,
                                    width: 1,
                                  ),
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.forum,
                                    size: 25,
                                    color: MesCouleurs.marronPrincipale,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      colorSelected = color2;
                                      colorUnselected = color1;
                                      contenuIci = ContenuAccueilFormateur3();
                                      appColor = MesCouleurs.blancPrincipale;
                                    });
                                  },
                                ),
                              ),

                              SizedBox(height: 0),

                              Text(
                                "Forum",
                                style: TextStyle(
                                  color: MesCouleurs.marronPrincipale,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
