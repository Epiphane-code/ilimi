import 'package:flutter/material.dart';
import 'forum_community.dart';
import 'forum_post.dart';
import 'profile.dart';

class Forum extends StatefulWidget {
  const Forum({super.key});

  @override
  State<Forum> createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  late Widget selectedWidgetForum;
  int _selectedIndex = 0;
  final List<Widget> _widgets = [ForumCommunity(), PostForum()];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("Forum Community"),
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
                onPressed: () {},
                child: Text("Forum Post"),
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
          Expanded(
            child: SingleChildScrollView(child: Column(children: [
                  
                ],
              )),
          ),
        ],
      ),
    );
  }
}
