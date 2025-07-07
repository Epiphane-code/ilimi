import 'package:flutter/material.dart';
import 'profile.dart';
import 'home_body.dart';
// La barre de navigation

class MyBottonNavigationBar extends StatefulWidget {
  const MyBottonNavigationBar({super.key});

  @override
  State<MyBottonNavigationBar> createState() => _MyBottonNavigationBarState();
}

class _MyBottonNavigationBarState extends State<MyBottonNavigationBar> {
  late Widget select;
  int _id = 0;
  List<BottomNavigationBarItem> _myIcon = [];
  List<Widget> _body = [];

  /*List<String> Module = []; //['id_module', 'nom_mdule', 'categorie_module','image_module', 'duree_module','note_module' ];
  List<Module> modules = [];
  */

  @override
  void initState() {
    super.initState(); // ou _myIcon = [];

    _body = <Widget>[
      Home2screen(),
      Center(child: Text("Page2")),
      Center(child: Text("Page3")),
      Profile(),
    ];

    _myIcon = <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
      BottomNavigationBarItem(
        icon: Icon(Icons.play_circle_fill_rounded),
        label: 'Mes cours',
      ),
      BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
    ];
    select = Home2screen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xFF0EA5E9)),
      body: select,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: _myIcon,
        currentIndex: _id,
        onTap: (int myIcon) {
          setState(() {
            _id = myIcon;
            select = _body[_id];
          });
        },
        selectedItemColor: Color(0xFFFFC727),
        unselectedItemColor: Color(0xFF5B271E),
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14,
          //  backgroundColor: Color(0xFF5B271E),
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }
}
