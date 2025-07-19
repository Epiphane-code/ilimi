import 'package:flutter/material.dart';
import 'package:ilimi/MyWidget/ajouter_cours_screen.dart';
import 'package:ilimi/MyWidget/class.dart';
import 'accueil_formateur.dart';
import 'forum_formateur.dart';
import 'forum.dart';

class AccueilFormateur extends StatefulWidget {
  const AccueilFormateur({super.key});

  @override
  State<AccueilFormateur> createState() => _AccueilFormateurState();
}

class _AccueilFormateurState extends State<AccueilFormateur> {
  List<Widget> contenuFormateur = [
    ContenuAccueilFormateur(),
    ContenuAccueilFormateur2(),
  ];
  late List<BottomNavigationBarItem> listBottonici;
  late Widget contenuIci;
  Color color1 = MesCouleurs.jaunePrincipale;
  Color color2 = Colors.white;
  late Color colorSelected;
  late Color colorUnselected;

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
        backgroundColor: Color(0xFFFFC727),
        child: Icon(Icons.add, size: 55, color: Color(0xFF5B271E)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Color(0xFFF9F4F4),
      appBar: AppBar(
        centerTitle: true,
        leading: Text(""),
        title: Text(
          "Mon espace",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color(0xFF5B271E),
          ),
        ),
        // actions: [Icon(Icons.settings, size: 30)],
        backgroundColor: Color(0xFF0EA5E9),
      ),
      body: Column(
        children: [
          //ContenuAccueilFormateur(),
          Expanded(flex: 8, child: contenuIci),
          Stack(
            children: [
              Container(
                height: 70,
                color: MesCouleurs.blancPrincipale,
                child: Align(
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
                                      });
                                    },
                                    icon: Icon(
                                      Icons.home,
                                      size: 25,
                                      color: Color(0xFF5B271E),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Accueil",
                                  style: TextStyle(
                                    color: Color(0xFF5B271E),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(width: 10),

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
                                      color: Color(0xFF5B271E),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        colorSelected = color2;
                                        colorUnselected = color1;
                                        contenuIci = ContenuAccueilFormateur2();
                                      });
                                    },
                                  ),
                                ),

                                SizedBox(height: 0),

                                Text(
                                  "Forum",
                                  style: TextStyle(
                                    color: Color(0xFF5B271E),
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
