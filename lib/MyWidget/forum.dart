import 'package:flutter/material.dart';
import 'package:ilimi/MyWidget/forum_community.dart';
import 'forum_post.dart';

class Forum extends StatefulWidget {
  const Forum({super.key});

  @override
  State<Forum> createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  //late Widget selectedWidgetForum;
  final List<Widget> _widgetsForum = [PostForum(), ForumCommunity()];
  late Widget _widgetsForumSelected;
  Color colorSelected = Color(0xFFFFC727);
  Color colorNoSelected = Color(0xFF5A231F);
  late Color colorValeur;
  late Color colorValeur2;

  @override
  void initState() {
    super.initState();
    _widgetsForumSelected = _widgetsForum[0];
    colorValeur = colorSelected;
    colorValeur2 = colorNoSelected;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _widgetsForumSelected = _widgetsForum[0];
                    colorValeur = colorSelected;
                    colorValeur2 = colorNoSelected;
                  });
                },
                child: Text("Questions", style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 40),
                  backgroundColor: colorValeur, // marron foncé
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _widgetsForumSelected = _widgetsForum[1];
                    colorValeur = colorNoSelected;
                    colorValeur2 = colorSelected;
                  });
                },
                child: Text(
                  "Communauté",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 40),
                  backgroundColor: colorValeur2, // marron foncé
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          _widgetsForumSelected,
        ],
      ),
    );
  }
}
