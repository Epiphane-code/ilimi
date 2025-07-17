import 'package:flutter/material.dart';
import 'package:ilimi/MyWidget/ajouter_cours_screen.dart';
import 'accueil_formateur.dart';
import 'notification.dart';

class AccueilFormateur extends StatefulWidget {
  const AccueilFormateur({super.key});

  @override
  State<AccueilFormateur> createState() => _AccueilFormateurState();
}

class _AccueilFormateurState extends State<AccueilFormateur> {
  late List<BottomNavigationBarItem> listBotton;
  @override
  void initState() {}

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
        child: Icon(Icons.add, size: 50, color: Color(0xFF5B271E)),
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
          ContenuAccueilFormateur(),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  bottom: 0 + MediaQuery.of(context).padding.bottom,
                  left: 0,
                  right: 0,
                  height: 200,
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

                          // width: 250,
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
                                  IconButton(
                                    onPressed: () {
                                      // Action for 'Accueil'
                                    },
                                    icon: Icon(
                                      Icons.home,
                                      size: 30,
                                      color: Color(0xFF5B271E),
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
                                  IconButton(
                                    icon: Icon(
                                      Icons.forum,
                                      size: 30,
                                      color: Color(0xFF5B271E),
                                    ),
                                    onPressed: () {
                                      // Action for 'Mes cours'
                                    },
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
          ),
        ],
      ),
    );
  }
}
