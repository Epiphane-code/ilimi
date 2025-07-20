import 'package:flutter/material.dart';
import 'package:ilimi/MyWidget/dataList.dart';
import 'class.dart';
import 'notification.dart';
import 'login_screen.dart';

class ContenuAccueilFormateur extends StatefulWidget {
  const ContenuAccueilFormateur({super.key});

  @override
  State<ContenuAccueilFormateur> createState() =>
      _ContenuAccueilFormateurState();
}

class _ContenuAccueilFormateurState extends State<ContenuAccueilFormateur> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: MesCouleurs.bleuPrincipale,
          child: Column(
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
                        offset: const Offset(-22, 32),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Colors.white,
                        elevation: 18,
                        icon: Icon(
                          Icons.settings,
                          size: 25,
                          color: Colors.white,
                        ),
                        itemBuilder: (BuildContext context) => [
                          PopupMenuItem(
                            value: "Profile",
                            child: Container(
                              width: 150,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color(0xFF0EA5E9),
                                    width: 4,
                                  ),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 0),
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
                            child: Container(
                              width: 150,
                              margin: EdgeInsets.symmetric(horizontal: 0),
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
                          ),

                          PopupMenuItem(
                            value: "Notification",
                            child: Container(
                              width: 150,
                              margin: EdgeInsets.symmetric(horizontal: 0),
                              child: ListTile(
                                leading: Icon(Icons.notifications),
                                title: Text("Notification"),
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
                          ),

                          PopupMenuItem(
                            value: "Langage",
                            child: Container(
                              width: 150,
                              margin: EdgeInsets.symmetric(horizontal: 0),
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
                          ),

                          PopupMenuItem(
                            value: "Terms et conditions",
                            child: Container(
                              width: 150,
                              margin: EdgeInsets.symmetric(horizontal: 0),
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
                          ),

                          PopupMenuItem(
                            value: "aide",
                            child: Container(
                              width: 150,
                              margin: EdgeInsets.symmetric(horizontal: 0),
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
                          ),

                          PopupMenuItem(
                            value: "Deconnexion",
                            child: Container(
                              width: 150,
                              margin: EdgeInsets.symmetric(horizontal: 0),
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
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 15),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 35,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Chercher un module',
                    prefixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),

        Expanded(
          child: SingleChildScrollView(
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: mesModules.length,
              itemBuilder: (context, index) {
                MesModules module = mesModules[index];
                return Card(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        'assets/images/${module.image_module}',
                        width: 50,
                        height: 50,
                      ),
                      title: Text(
                        module.nom_module,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            module.categorie_module,
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          Text(
                            module.duree_module,
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            module.taille_module,
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          /*LinearProgressIndicator(
                            value: module.niveau / 100, // 70%
                            backgroundColor: Colors.grey[300],
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.blue,
                            ),
                          ),*/
                        ],
                      ),
                      trailing: Text(
                        module.note_module,
                        style: TextStyle(
                          color: MesCouleurs.jaunePrincipale,
                          fontSize: 16,
                        ),
                      ),
                      onTap: () {
                        // Action à effectuer lors de l'appui sur le module
                        /* Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyBottonNavigationBar(),
                        ),
                      ); */
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ),

        //Expanded(child: ListWheelScrollView(itemExtent: itemExtent, children: children)),
      ],
    );
  }
}
