// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ilimi/MyWidget/class.dart';
//import 'package:ilimi/MyWidget/opt.dart';

class Brouillon extends StatefulWidget {
  const Brouillon({super.key});

  @override
  State<Brouillon> createState() => _BrouillonState();
}

class _BrouillonState extends State<Brouillon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MesCouleurs.blancPrincipale,
       appBar: AppBar(
        centerTitle: true,
        title: Text("Brouillon", style: TextStyle(fontSize: 13)),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  // Logo

                  Container(
                   // padding:EdgeInsets.all(10),
                    
                    decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                    ),
                    //margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/images/video_player.png",
                           fit:BoxFit.cover,
                          // fit: BoxFit.cover, // pour remplir correctement le conteneur
                             
                           
                            
                             // logo
                            //height: 100,
                          ),
                        ),
                    
                         Text("3D design",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                         Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          

                          children: [
                            SizedBox(height: 6),
                            Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Row(
                                  children: [
                                    Icon(Icons.access_time, size: 16, color: Colors.grey),
                                    //SizedBox(width: 4),
                                    
                                    //Text("icon"),
                                    //SizedBox(width: 10,),
                                    Text("6h30min."),
                                  ],
                                ),
                                 //SizedBox(width: 10,),
                                Text("28 lessons"),
                                //SizedBox(width: 10,),
                               // Text("salut"),

                              ],
                              
                            ),
                            TextButton(onPressed: (){}, child: Text("Publier",style: TextStyle(color: MesCouleurs.bleuPrincipale),))
                          ]
                         )


                      ],
                    ),
                  ),

                  SizedBox(height: 30,),

                   SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                     child: Row(
                      
                      
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.all(0),),
                        TextButton(onPressed: () {}, child: Text("Lessons", style: TextStyle(fontWeight: FontWeight.bold, color: MesCouleurs.jaunePrincipale, fontSize: 17),),),
                        //SizedBox(width: 20,),
                        TextButton(onPressed: () {}, child: Text("Description", style: TextStyle(fontWeight: FontWeight.bold, color: MesCouleurs.marronPrincipale, fontSize: 17),),),
                        //SizedBox(width: 20,),
                        TextButton(onPressed: () {}, child: Text("Exercice", style: TextStyle(fontWeight: FontWeight.bold, color: MesCouleurs.marronPrincipale, fontSize: 17),),),
                        //SizedBox(width: 20,),
                        TextButton(onPressed: () {}, child: Text("Quiz", style: TextStyle(fontWeight: FontWeight.bold, color: MesCouleurs.marronPrincipale, fontSize: 17),),),
                      ],
                     ),
                   ),

                   SizedBox(height: 40,),
                  Column(
                    
                    children: [
                      
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.all(10),),
                          Text("Section 01-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                          TextButton(onPressed: () {}, child: Text("Ajouter", style: TextStyle(fontWeight: FontWeight.bold, color: MesCouleurs.bleuPrincipale),)),
                        ],
                      ),
                      SizedBox(height: 40,),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.all(10),),
                          Text("Section 02-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                         TextButton(onPressed: () {}, child: Text("Ajouter", style: TextStyle(fontWeight: FontWeight.bold, color: MesCouleurs.bleuPrincipale),)),
                        ],
                      )

                    ],

                  ),





                ]    
              )      
            )        
          )          
        )            
      )
                     //body: Text("Salut"),

    ) ;
  }
}