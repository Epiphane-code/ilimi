import 'package:flutter/material.dart';
import 'class.dart';
import 'dataList.dart';
import 'forum_community.dart';

class PostForum extends StatefulWidget {
  const PostForum({super.key});
  @override
  State<PostForum> createState() => _PostForumState();
}

class _PostForumState extends State<PostForum> {
  final List<Widget> _widgetsForum = [PostForum(), ForumCommunity()];
  late Widget _widgetsForumSelected;
  Color colorSelected = MesCouleurs.jaunePrincipale;
  Color colorNoSelected = MesCouleurs.marronPrincipale;
  late Color colorValeur;
  late Color colorValeur2;
  void addPost(ForumPost post) {
    setState(() {
      forumPosts.add(post);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      //physics: NeverScrollableScrollPhysics(),
      itemCount: forumPosts.length,
      itemBuilder: (context, index) {
        final post = forumPosts[index];
        final user = users.firstWhere((u) => u.id == post.idUser);
        return Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(user.name, style: TextStyle(fontWeight: FontWeight.bold)),
              post.sujet,
              post.post,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(Icons.thumb_up),
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                  Text('0'),
                  SizedBox(width: 10),
                  IconButton(
                    icon: Icon(Icons.comment),
                    onPressed: () {
                      // Action pour commenter
                    },
                  ),
                  Text('0'),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
