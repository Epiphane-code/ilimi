import 'package:flutter/material.dart';
import 'package:ilimi/MyWidget/login_screen.dart';
import 'class.dart';
import 'notification.dart';

class ContenuAccueilFormateur extends StatefulWidget {
  const ContenuAccueilFormateur({super.key});

  @override
  State<ContenuAccueilFormateur> createState() =>
      _ContenuAccueilFormateurState();
}

class _ContenuAccueilFormateurState extends State<ContenuAccueilFormateur> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Color(0xFF0EA5E9),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Bonjour,",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Nana Fourera Omar",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Future.delayed(Duration.zero, () {
                              if (context.mounted) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NotificationClass(),
                                  ),
                                );
                              }
                            });
                          },
                          icon: Icon(
                            Icons.notifications,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),

                        PopupMenuButton<String>(
                          color: const Color.fromARGB(255, 246, 242, 205),
                          icon: Icon(
                            Icons.settings,
                            size: 25,
                            color: Colors.white,
                          ),
                          itemBuilder: (BuildContext context) => [
                            PopupMenuItem(
                              value: "Profile",
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xFF0EA5E9),
                                      width: 4,
                                    ),
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 40),
                                margin: EdgeInsets.symmetric(horizontal: 0),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Color(0xFF0EA5E9),
                                      radius: 54,
                                      child: CircleAvatar(
                                        radius: 50,
                                        backgroundImage: AssetImage(
                                          'assets/images/ilimi_logo.png',
                                        ),
                                      ),
                                    ),
                                    Text("Ismael Harouna"),
                                    SizedBox(height: 20),
                                  ],
                                ),
                              ),
                            ),

                            PopupMenuItem(
                              value: "Profile",
                              child: ListTile(
                                leading: Icon(Icons.person),
                                title: Text("Modifier le profile"),
                                onTap: () {
                                  /* Future.delayed(Duration.zero, () {
                                    if (context.mounted) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ,
                                        ),
                                      );
                                    }
                                  });*/
                                },
                              ),
                            ),

                            PopupMenuItem(
                              value: "Notification",
                              child: ListTile(
                                leading: Icon(Icons.notifications),
                                title: Text("Notification"),
                                onTap: () {
                                  Future.delayed(Duration.zero, () {
                                    if (context.mounted) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              NotificationClass(),
                                        ),
                                      );
                                    }
                                  });
                                },
                              ),
                            ),

                            PopupMenuItem(
                              value: "Langage",
                              child: ListTile(
                                leading: Icon(Icons.language),
                                title: Text("Langage"),
                                subtitle: Text(
                                  "Français",
                                  style: TextStyle(color: Colors.green),
                                ),
                                onTap: () {
                                  /* Future.delayed(Duration.zero, () {
                                    if (context.mounted) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ,
                                        ),
                                      );
                                    }
                                  });*/
                                },
                              ),
                            ),

                            PopupMenuItem(
                              value: "Terms et conditions",
                              child: ListTile(
                                leading: Icon(Icons.policy),
                                title: Text("Terms et conditions"),
                                onTap: () {
                                  /* Future.delayed(Duration.zero, () {
                                    if (context.mounted) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ,
                                        ),
                                      );
                                    }
                                  });*/
                                },
                              ),
                            ),

                            PopupMenuItem(
                              value: "aide",
                              child: ListTile(
                                leading: Icon(Icons.help),
                                title: Text("Help"),

                                onTap: () {
                                  /* Future.delayed(Duration.zero, () {
                                    if (context.mounted) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ,
                                        ),
                                      );
                                    }
                                  });*/
                                },
                              ),
                            ),

                            PopupMenuItem(
                              value: "Deconnexion",
                              child: ListTile(
                                leading: Icon(Icons.logout),
                                title: Text(
                                  "Deconnexion",
                                  style: TextStyle(color: Colors.red),
                                ),
                                onTap: () {
                                  Future.delayed(Duration.zero, () {
                                    if (context.mounted) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Login(),
                                        ),
                                      );
                                    }
                                  });
                                },
                              ),
                            ),

                            PopupMenuItem(
                              height: 200,
                              value: "Vide",
                              child: Text(""),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
