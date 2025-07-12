import 'package:flutter/material.dart';
import 'class.dart';

class ForumCommunity extends StatefulWidget {
  const ForumCommunity({super.key});

  @override
  State<ForumCommunity> createState() => _ForumCommunityState();
}

class _ForumCommunityState extends State<ForumCommunity> {
  late List<Community> communitie;

  @override
  void initState() {
    super.initState();
    communitie = [
      Community(
        name: "Flutter Devs",
        description: "A community for Flutter developers",
        imageUrl: "flutter_devs.jpg",
      ),
      Community(
        name: "Dart Enthusiasts",
        description: "A place to discuss all things Dart",
        imageUrl: "dart_enthusiasts.jpg",
      ),
      Community(
        name: "Web Developers",
        description: "For web development discussions",
        imageUrl: "web_developers.jpg",
      ),
      Community(
        name: "Mobile App Developers",
        description: "Discuss mobile app development",
        imageUrl: "mobile_app_devs.jpg",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: communitie.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/${communitie[index].imageUrl}',
              ),
            ),
            title: Text(communitie[index].name),
            subtitle: Text(communitie[index].description),
          );
        },
      );
  }
}
