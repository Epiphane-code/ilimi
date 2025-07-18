import 'package:flutter/material.dart';
import 'class.dart';
import 'dataList.dart';

class CoursBody extends StatefulWidget {
  const CoursBody({super.key});

  @override
  State<CoursBody> createState() {
    return _CoursBodyState();
  }
}

class _CoursBodyState extends State<CoursBody> {
  Color onGoing = MesCouleurs.jaunePrincipale;
  Color completed = MesCouleurs.marronPrincipale;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    onGoing = MesCouleurs.jaunePrincipale;
                    completed = MesCouleurs.marronPrincipale;
                  });
                  // Action à effectuer lors de l'appui sur le bouton
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: onGoing,
                  fixedSize: const Size(150, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  "Ongoing",
                  style: TextStyle(color: Color(0xFFFFFFFF)),
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    onGoing = MesCouleurs.marronPrincipale;
                    completed = MesCouleurs.jaunePrincipale;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: completed,
                  fixedSize: const Size(150, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  "Completed",
                  style: TextStyle(color: Color(0xFFFFFFFF)),
                ),
              ), // Placeholder for alignment
            ],
          ),

          SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: mesModules.length,
            itemBuilder: (context, index) {
              MesModules module = mesModules[index];
              return Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                        LinearProgressIndicator(
                          value: module.niveau / 100, // 70%
                          backgroundColor: Colors.grey[300],
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.blue,
                          ),
                        ),
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
        ],
      ),
    );
  }
}
