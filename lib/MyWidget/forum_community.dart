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
        description: "Communauté pour le developpement Flutter",
        imageUrl: "flutter_devs.png",
      ),
      Community(
        name: "Dart Enthusiasts",
        description: "La meilleur communauté Dart",
        imageUrl: "dart_enthusiasts.png",
      ),
      Community(
        name: "Web Developers",
        description: "Discussions pour le dev web",
        imageUrl: "web_developers.png",
      ),
      Community(
        name: "Mobile App Developers",
        description: "Devenez dev mobile",
        imageUrl: "mobile_app_devs.png",
      ),
      Community(
        name: "Dart Enthusiasts",
        description: "La meilleur communauté Dart",
        imageUrl: "dart_enthusiasts.png",
      ),
      Community(
        name: "Dart Enthusiasts",
        description: "La meilleur communauté Dart",
        imageUrl: "dart_enthusiasts.png",
      ),
      Community(
        name: "Web Developers",
        description: "Discussions pour le dev web",
        imageUrl: "web_developers.png",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: communitie.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            SizedBox(height: 3),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              //height: 100,
              child: ListTile(
                leading: Image.asset(
                  'assets/images/${communitie[index].imageUrl}',
                  height: 60,
                  width: 80,
                ),

                title: Text(communitie[index].name),
                subtitle: Text(communitie[index].description),
              ),
            ),
          ],
        );
      },
    );
  }
}
