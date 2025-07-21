import 'package:flutter/material.dart';
import 'class.dart';

List<Users> users = [
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

List<Community> communitie = [
  Community(
    name: "Flutter Devs",
    description: "Communauté pour le developpement Flutter",
    imageUrl: "flutter_devs.png",
  ),
  Community(
    name: "Dart Enthusiasts",
    description: "La meilleur communauté Dart",
    imageUrl: "dart_enthusiasts.png",
  ),
  Community(
    name: "Web Developers",
    description: "Discussions pour le dev web",
    imageUrl: "web_developers.png",
  ),
  Community(
    name: "Mobile App Developers",
    description: "Devenez dev mobile",
    imageUrl: "mobile_app_devs.png",
  ),
  Community(
    name: "Dart Enthusiasts",
    description: "La meilleur communauté Dart",
    imageUrl: "dart_enthusiasts.png",
  ),
  Community(
    name: "Dart Enthusiasts",
    description: "La meilleur communauté Dart",
    imageUrl: "dart_enthusiasts.png",
  ),
  Community(
    name: "Web Developers",
    description: "Discussions pour le dev web",
    imageUrl: "web_developers.png",
  ),
];

List<MesModules> mesModules = [
  MesModules(
    id_module: 1,
    id_module_user: 1,
    nom_module: 'Flutter pour les débutants',
    categorie_module: 'Développement Mobile',
    image_module: 'flutter.png',
    taille_module: '500 Mo',
    duree_module: '10 heures',
    note_module: '4.5',
    niveau: 6,
  ),
  MesModules(
    id_module: 2,
    id_module_user: 5,
    nom_module: 'Introduction à Dart',
    categorie_module: 'Langage de Programmation',
    image_module: 'dart.png',
    taille_module: '300 Mo',
    duree_module: '5 heures',
    note_module: '4.0',
    niveau: 36,
  ),
  // Ajoutez d'autres modules ici
  MesModules(
    id_module: 3,
    id_module_user: 4,
    nom_module: 'React pour les débutants',
    categorie_module: 'Développement Web',
    image_module: 'react.png',
    taille_module: '600 Mo',
    duree_module: '8 heures',
    note_module: '4.2',
    niveau: 70,
  ),
  MesModules(
    id_module: 4,
    id_module_user: 2,
    nom_module: 'Introduction à la programmation',
    categorie_module: 'Informatique',
    image_module: 'programmation.png',
    taille_module: '700 Mo',
    duree_module: '12 heures',
    note_module: '4.8',
    niveau: 80,
  ),
  MesModules(
    id_module: 5,
    id_module_user: 3,
    nom_module: 'Design UI/UX',
    categorie_module: 'Design',
    image_module: 'design.png',
    taille_module: '400 Mo',
    duree_module: '6 heures',
    note_module: '4.6',
    niveau: 50,
  ),
  MesModules(
    id_module: 6,
    id_module_user: 1,
    nom_module: 'Bases de données avec SQL',
    categorie_module: 'Bases de données',
    image_module: 'sql.png',
    taille_module: '550 Mo',
    duree_module: '7 heures',
    note_module: '4.3',
    niveau: 20,
  ),
];

List<ForumPost> forumPosts = [
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
