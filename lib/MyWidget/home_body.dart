import 'package:flutter/material.dart';
import 'class.dart';
import 'dataList.dart';

class Home2screen extends StatefulWidget {
  const Home2screen({super.key});

  @override
  State<Home2screen> createState() => _Home2screenState();
}

class _Home2screenState extends State<Home2screen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 120,
          color: MesCouleurs.bleuPrincipale,
          child: Stack(
            children: [
              Positioned(
                top: 10,
                left: 30,
                child: Icon(
                  Icons.star,
                  color: MesCouleurs.jaunePrincipale,
                  size: 14,
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Icon(
                  Icons.star,
                  color: MesCouleurs.jaunePrincipale,
                  size: 24,
                ),
              ),
              Positioned(
                top: 30,
                left: 300,
                child: Icon(
                  Icons.star,
                  color: MesCouleurs.jaunePrincipale,
                  size: 14,
                ),
              ),
              Positioned(
                top: 50,
                right: 20,
                child: Icon(
                  Icons.star,
                  color: MesCouleurs.jaunePrincipale,
                  size: 20,
                ),
              ),
              Positioned(
                bottom: 40,
                left: 60,
                child: Icon(
                  Icons.star,
                  color: MesCouleurs.jaunePrincipale,
                  size: 18,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 17, right: 50, top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Bonjour,",
                                style: TextStyle(
                                  color: MesCouleurs.blancPrincipale,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "Bienvenue",
                                style: TextStyle(
                                  color: MesCouleurs.blancPrincipale,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Text(""),
                        ],
                      ),
                    ),
                    SizedBox(height: 0),
                    Container(
                      height: 40,
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      padding: EdgeInsets.symmetric(horizontal: 17),
                      decoration: BoxDecoration(
                        color: MesCouleurs.blancPrincipale,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Chercher un thème',
                          prefixIcon: Icon(Icons.search),
                          filled: true,
                          fillColor: MesCouleurs.blancPrincipale,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 10),
        SizedBox(
          height: 37,
          child: ListView.builder(
            shrinkWrap: true,
            //physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: categoriesModules.length,
            itemBuilder: (context, index) {
              bool isSelected = selectedIndex == index;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? MesCouleurs.jaunePrincipale
                        : MesCouleurs.marronPrincipale,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      categoriesModules[index],
                      style: TextStyle(
                        color: MesCouleurs.blancPrincipale,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),

        SizedBox(height: 10),

        Expanded(
          child: ListView.builder(
            //shrinkWrap: true,
            //physics: NeverScrollableScrollPhysics(),
            itemCount: mesModules.length,
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),

                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),

                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/${mesModules[index].image_module}',
                          height: 150,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        mesModules[index].categorie_module,
                        style: TextStyle(color: MesCouleurs.marronPrincipale),
                      ),

                      Text(
                        mesModules[index].nom_module,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(mesModules[index].taille_module),
                          Text(
                            "|",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, size: 15),
                              SizedBox(width: 10),
                              Text(mesModules[index].note_module),
                            ],
                          ),
                          Text(
                            "|",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(mesModules[index].duree_module),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
