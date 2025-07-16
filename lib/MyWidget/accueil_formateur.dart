import 'package:flutter/material.dart';

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
      appBar: AppBar(
        centerTitle: true,
        title: Text("Mon espace", style: TextStyle(fontSize: 13)),
        actions: [Icon(Icons.settings)],
      ),
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 70),
            child: Stack(
              children: [
                Positioned(
                  bottom: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("UN"),
                      Row(
                        children: [
                          Text("DEux"),
                          SizedBox(width: 20),
                          Text("Trois"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
