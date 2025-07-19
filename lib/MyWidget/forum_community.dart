import 'package:flutter/material.dart';
import 'dataList.dart';

class ForumCommunity extends StatefulWidget {
  const ForumCommunity({super.key});

  @override
  State<ForumCommunity> createState() => _ForumCommunityState();
}

class _ForumCommunityState extends State<ForumCommunity> {
  //late List<Community> communitie
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
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
      ),
    );
  }
}
