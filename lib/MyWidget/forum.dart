import 'package:flutter/material.dart';
import 'class.dart';

class ForumPost extends StatefulWidget {
  @override
  _ForumPostState createState() => _ForumPostState();
}

class _ForumPostState extends State<ForumPost> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: itemBuilder)
  }
}
