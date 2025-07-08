import 'package:flutter/material.dart';

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
          SizedBox(height: 20),
          Center(
            child: Text(
              "Profile",
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF202244),
                fontFamily: 'Jost',
                fontWeight: FontWeight.w600,
                height: 1.0,
                letterSpacing: 0.0,
              ),
            ),
          ),

          SizedBox(height: 40),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/ilimi_logo.png'),
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
          SizedBox(height: 40),
          Column(
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Modifier le profil"),
                trailing: Icon(Icons.chevron_right),
              ),

              ListTile(
                leading: Icon(Icons.school),
                title: Text("Devenir formateur"),
                trailing: Icon(Icons.chevron_right),
              ),

              ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notifications"),
                trailing: Icon(Icons.chevron_right),
              ),

              ListTile(
                leading: Icon(Icons.language),
                title: Text("Langue"),
                trailing: Icon(Icons.chevron_right),
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
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
