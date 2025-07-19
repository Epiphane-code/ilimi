import 'package:flutter/material.dart';
import 'package:ilimi/MyWidget/class.dart';
import 'forum_post.dart';
import 'forum_community.dart';

class ContenuAccueilFormateur2 extends StatefulWidget {
  const ContenuAccueilFormateur2({super.key});

  @override
  State<ContenuAccueilFormateur2> createState() =>
      _ContenuAccueilFormateurState();
}

class _ContenuAccueilFormateurState extends State<ContenuAccueilFormateur2> {
  final List<Widget> _widgetsForum = [PostForum(), ForumCommunity()];
  late Widget _widgetsForumSelected;
  Color colorSelected = MesCouleurs.jaunePrincipale;
  Color colorNoSelected = MesCouleurs.marronPrincipale;
  late Color colorValeur;
  late Color colorValeur2;

  @override
  void initState() {
    super.initState();
    colorValeur = colorSelected;
    colorValeur2 = colorNoSelected;
    _widgetsForumSelected = _widgetsForum[0];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Container(
          //margin: EdgeInsets.symmetric(vertical: 0),
          //padding: EdgeInsets.all(0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  padding: EdgeInsets.all(0),
                  height: 30,
                  //width: 250,
                  //margin: EdgeInsets.only(left: 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: 1,
                      style: BorderStyle.solid,
                      color: MesCouleurs.marronPrincipale,
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.black),

                      //labelText: 'Recherche',
                      hintStyle: TextStyle(color: Colors.black),

                      hintText: 'Recherche',
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    size: 30,
                    color: MesCouleurs.bleuPrincipale,
                  ),
                ),
              ),
            ],
          ),
        ),

        Container(
          // margin: EdgeInsets.symmetric(vertical: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    colorValeur = colorSelected;
                    colorValeur2 = colorNoSelected;
                    _widgetsForumSelected = _widgetsForum[0];
                  });
                },
                child: Text(
                  "Publications",
                  style: TextStyle(
                    fontSize: 20,
                    color: colorValeur,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                    decorationColor: colorValeur,
                    height: 2.5,
                  ),
                ),
              ),

              TextButton(
                onPressed: () {
                  setState(() {
                    colorValeur = colorNoSelected;
                    colorValeur2 = colorSelected;
                    _widgetsForumSelected = _widgetsForum[1];
                  });
                },
                child: Text(
                  "Communauté",
                  style: TextStyle(
                    fontSize: 20,
                    color: colorValeur2,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                    decorationColor: colorValeur2,
                    height: 2.5,
                  ),
                ),
              ),
            ],
          ),
        ),

        Expanded(child: _widgetsForumSelected),
      ],
    );
  }
}
