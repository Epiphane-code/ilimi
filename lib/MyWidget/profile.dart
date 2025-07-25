import 'package:flutter/material.dart';
import 'package:ilimi/MyWidget/edit_profile.dart';
import 'package:ilimi/MyWidget/register_screen.dart';
import 'package:ilimi/MyWidget/welcome.dart';
import 'package:ilimi/MyWidget/notification.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40),
          CircleAvatar(
            backgroundColor: Color.fromARGB(255, 22, 127, 113),
            radius: 54,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/ilimi_logo.png'),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Naphiou Dan Salao",
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF202244),
              fontFamily: 'Jost',
              fontWeight: FontWeight.w600,
              height: 1.0,
              letterSpacing: 0.0,
            ),
          ),

          SizedBox(height: 10),
          Text(
            "naphsalao@gmail.com",
            style: TextStyle(
              fontSize: 10,
              color: Color(0xFF202244),
              fontFamily: 'Jost',
              fontWeight: FontWeight.w600,
              height: 1.0,
              letterSpacing: 0.0,
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Modifier le profile"),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfile()),
                ),
                trailing: Icon(Icons.chevron_right),
              ),

              ListTile(
                leading: Icon(Icons.school),
                title: Text("Devenir formateur"),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  Future.delayed(Duration.zero, () {
                    if (context.mounted) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()),
                      );
                    }
                  });
                },
              ),

              ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notifications"),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
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
              ),

              ListTile(
                leading: Icon(Icons.language),
                title: Text("Langue"),
                subtitle: Text(
                  "Français",
                  style: TextStyle(color: Colors.green, fontSize: 11),
                ),
                // trailing: Icon(Icons.chevron_right),
              ),

              ListTile(
                leading: Icon(Icons.help),
                title: Text("Aide et support"),
                trailing: Icon(Icons.chevron_right),
              ),

              ListTile(
                leading: Icon(Icons.info),
                title: Text("À propos de l'application"),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Déconnexion", style: TextStyle(color: Colors.red)),
                onTap: () {
                  Future.delayed(Duration.zero, () {
                    if (context.mounted) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Welcome()),
                      );
                    }
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
