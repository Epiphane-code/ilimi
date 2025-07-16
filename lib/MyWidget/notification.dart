import 'package:flutter/material.dart';
import 'class.dart';

class NotificationClass extends StatefulWidget {
  const NotificationClass({super.key});

  @override
  State<NotificationClass> createState() => _NotificationClassState();
}

class _NotificationClassState extends State<NotificationClass> {
  late List<MessageNotification> _notification;
  @override
  void initState() {
    super.initState();
    _notification = [
      MessageNotification(
        idNotification: 1,
        idUserDestinationNotification: 5,
        categorieNotification: 'like',
        messageNotification: 'Vous avez une nouvelle mention j\'aime',
        heureNotification: DateTime(2025, 2, 4, 6, 30),
      ),

      MessageNotification(
        idNotification: 2,
        idUserDestinationNotification: 5,
        categorieNotification: 'rappel',
        messageNotification:
            'Rappel: vous avez fait deux jour sans consulter vos cours',
        heureNotification: DateTime(2025, 2, 4, 6, 30),
      ),

      MessageNotification(
        idNotification: 3,
        idUserDestinationNotification: 5,
        categorieNotification: 'like',
        messageNotification: 'Vous avez une nouvelle mention j\'aime',
        heureNotification: DateTime(2025, 2, 4, 6, 30),
      ),

      MessageNotification(
        idNotification: 4,
        idUserDestinationNotification: 5,
        categorieNotification: 'commentaire',
        messageNotification: 'Vous avez des nouveaux commentaires',
        heureNotification: DateTime(2025, 2, 22, 34, 30),
      ),

      MessageNotification(
        idNotification: 5,
        idUserDestinationNotification: 5,
        categorieNotification: 'like',
        messageNotification: 'Vous avez une nouvelle mention j\'aime',
        heureNotification: DateTime(2025, 2, 4, 6, 30),
      ),

      MessageNotification(
        idNotification: 6,
        idUserDestinationNotification: 5,
        categorieNotification: 'chat',
        messageNotification: 'Vous avez un nouveau message',
        heureNotification: DateTime(2025, 2, 4, 6, 30),
      ),

      MessageNotification(
        idNotification: 7,
        idUserDestinationNotification: 5,
        categorieNotification: 'like',
        messageNotification: 'Vous avez une nouvelle mention j\'aime',
        heureNotification: DateTime(2025, 2, 4, 6, 30),
      ),

      MessageNotification(
        idNotification: 7,
        idUserDestinationNotification: 5,
        categorieNotification: 'like',
        messageNotification: 'Vous avez une nouvelle mention j\'aime',
        heureNotification: DateTime(2025, 2, 4, 6, 30),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Notification", style: TextStyle(fontSize: 13)),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        //physics: NeverScrollableScrollPhysics(),
        itemCount: _notification.length,
        itemBuilder: (context, index) {
          Icon monIconCategorie(String str) {
            switch (str) {
              case 'message':
                return Icon(Icons.message);
              case 'commentaire':
                return Icon(Icons.comment, color: Color(0xFFFFC727));
              case 'like':
                return Icon(
                  Icons.favorite,
                  color: const Color.fromARGB(255, 159, 52, 52),
                );
              case 'rappel':
                return Icon(
                  Icons.alarm,
                  color: Color.fromARGB(255, 240, 34, 2),
                );
              case 'chat':
                return Icon(
                  Icons.chat,
                  color: Color.fromARGB(255, 179, 167, 135),
                );
              default:
                return Icon(Icons.home);
            }
          }

          late MessageNotification temp;
          temp = _notification[index];
          late String ctgr = temp.categorieNotification;
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: ListTile(
              leading: monIconCategorie(ctgr),
              title: Text(temp.messageNotification),
              subtitle: Text('${temp.heureNotification}'),
              //trailing: ,
            ),
          );
        },
      ),
    );
  }
}
