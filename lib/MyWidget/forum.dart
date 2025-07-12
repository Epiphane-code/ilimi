import 'package:flutter/material.dart';
import 'package:ilimi/MyWidget/class.dart';
import 'forum_community.dart';
import 'forum_post.dart';
import 'profile.dart';

class Forum extends StatefulWidget {
  const Forum({super.key});

  @override
  State<Forum> createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  //late Widget selectedWidgetForum;
  final List<Widget> _widgetsForum = [PostForum(), Text("Forum Community")];
  late Widget _widgetsForumSelected;

  @override
  void initState() {
    super.initState();
    _widgetsForumSelected = _widgetsForum[0];
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
                  });
                },
                child: Text("Posts", style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5A231F), // marron foncé
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
                  });
                },
                child: Text("Community", style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5A231F), // marron foncé
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          
          _widgetsForumSelected
        ],
      ),
    );
  }
}
