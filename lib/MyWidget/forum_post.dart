import 'package:flutter/material.dart';
import 'class.dart';

class PostForum extends StatefulWidget {
  const PostForum({super.key});
  @override
  State<PostForum> createState() => _PostForumState();
}

class _PostForumState extends State<PostForum> {
  late List<ForumPost> forumPosts;
  late List<Users> users;

  @override
  void initState() {
    super.initState();
    forumPosts = [
      ForumPost(
        id: 1,
        idUser: 2,
        nb_reaction: 0,
        nb_comment: 0,
        sujet: Text("Flutter", style: TextStyle(fontSize: 12)),
        post: Text(
          "Comment installer Flutter sur Windows ?",
          style: TextStyle(fontSize: 12, color: Colors.black54),
        ),
      ),
      ForumPost(
        id: 2,
        idUser: 1,
        nb_reaction: 0,
        nb_comment: 0,
        sujet: Text("Html", style: TextStyle(fontSize: 12)),
        post: Text(
          "Comment apprendre le HTML ?",
          style: TextStyle(fontSize: 12, color: Colors.black54),
        ),
      ),
      ForumPost(
        id: 3,
        idUser: 3,
        nb_reaction: 0,
        nb_comment: 0,
        sujet: Text("Dart", style: TextStyle(fontSize: 12)),
        post: Text(
          "Comment apprendre le Dart ?",
          style: TextStyle(fontSize: 12, color: Colors.black54),
        ),
      ),
      ForumPost(
        id: 4,
        idUser: 5,
        nb_reaction: 0,
        nb_comment: 0,
        sujet: Text("Flutter", style: TextStyle(fontSize: 12)),
        post: Text(
          "Comment installer Flutter sur Windows ?",
          style: TextStyle(fontSize: 12, color: Colors.black54),
        ),
      ),
      ForumPost(
        id: 5,
        idUser: 3,
        nb_reaction: 0,
        nb_comment: 0,
        sujet: Text("Dart", style: TextStyle(fontSize: 12)),
        post: Text(
          "Comment apprendre le Dart ?",
          style: TextStyle(fontSize: 12, color: Colors.black54),
        ),
      ),
      ForumPost(
        id: 5,
        idUser: 3,
        nb_reaction: 0,
        nb_comment: 0,
        sujet: Text("Dart", style: TextStyle(fontSize: 12)),
        post: Text(
          "Comment apprendre le Dart ?",
          style: TextStyle(fontSize: 12, color: Colors.black54),
        ),
      ),
      ForumPost(
        id: 6,
        idUser: 4,
        nb_reaction: 0,
        nb_comment: 0,
        sujet: Text("Flutter", style: TextStyle(fontSize: 12)),
        post: Text(
          "Comment installer Flutter sur Windows ?",
          style: TextStyle(fontSize: 12, color: Colors.black54),
        ),
      ),
      ForumPost(
        id: 7,
        idUser: 2,
        nb_reaction: 0,
        nb_comment: 0,
        sujet: Text("Html", style: TextStyle(fontSize: 12)),
        post: Text(
          "Comment apprendre le HTML ?",
          style: TextStyle(fontSize: 12, color: Colors.black54),
        ),
      ),
      ForumPost(
        id: 8,
        idUser: 1,
        nb_reaction: 0,
        nb_comment: 0,
        sujet: Text("Html", style: TextStyle(fontSize: 12)),
        post: Text(
          "Comment apprendre le HTML ?",
          style: TextStyle(fontSize: 12, color: Colors.black54),
        ),
      ),
    ];
    // Initialisation des utilisateurs
    users = [
      Users(
        id: 1,
        name: 'Abbass',
        phone: '96008844',
        birth: '11/02/1995',
        genre: 'M',
        email: 'user1@example.com',
        imageUrl: 'https://example.com/user1.jpg',
      ),
      Users(
        id: 2,
        name: 'Ismo',
        phone: '96008844',
        birth: '11/02/1995',
        genre: 'M',
        email: 'user2@example.com',
        imageUrl: 'https://example.com/user2.jpg',
      ),
      Users(
        id: 3,
        name: 'Nana',
        phone: '96008844',
        birth: '11/02/1995',
        genre: 'F',
        email: 'user3@example.com',
        imageUrl: 'https://example.com/user3.jpg',
      ),
      Users(
        id: 4,
        name: 'Bello',
        phone: '96008844',
        birth: '11/02/1995',
        genre: 'M',
        email: 'user4@example.com',
        imageUrl: 'https://example.com/user4.jpg',
      ),
      Users(
        id: 5,
        name: 'Issa',
        phone: '96008844',
        birth: '11/02/1995',
        genre: 'M',
        email: 'user5@example.com',
        imageUrl: 'https://example.com/user5.jpg',
      ),
    ];
  }

  void addPost(ForumPost post) {
    setState(() {
      forumPosts.add(post);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
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
                  Text(
                    user.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
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
        ),
      ],
    );
  }
}
