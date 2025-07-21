// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

/////////////////////// La class Module /////////////////////////////////////
// 1.

//////////////////// La class MesModules qui herite Module /////////////////////////////
// 2.

class MesModules {
  int id_module;
  int id_module_user;
  String nom_module;
  String categorie_module;
  String image_module;
  String taille_module;
  String duree_module;
  String note_module;
  int niveau;

  MesModules({
    required this.id_module,
    required this.id_module_user,
    required this.nom_module,
    required this.categorie_module,
    required this.image_module,
    required this.taille_module,
    required this.duree_module,
    required this.note_module,
    required this.niveau,
  });
}

//////////////////// La class Users ////////////////////////////
// 3.
class Users {
  final int id;
  final String name;
  final String phone;
  final String birth;
  final String genre;
  final String email;
  final String imageUrl;

  Users({
    required this.id,
    required this.name,
    required this.phone,
    required this.birth,
    required this.genre,
    required this.email,
    required this.imageUrl,
  });
}

//////////////////////////// La class Publication Forum /////////////////////////
// 4.
class ForumPost {
  final int id;
  final int idUser;
  final int nb_reaction;
  final int nb_comment;
  final Widget sujet;
  final Widget post;

  ForumPost({
    required this.id,
    required this.idUser,
    required this.nb_reaction,
    required this.nb_comment,
    required this.sujet,
    required this.post,
  });
}

////////////////////////// La class Communauté /////////////////////////////////!SECTION
// 5.

class Community {
  final String name;
  final String description;
  final String imageUrl;

  Community({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}

///////////////////// La class Message de notification //////////////////////////////
// 6.

class MessageNotification {
  final int idNotification;
  final int idUserDestinationNotification;
  final String categorieNotification;
  final String messageNotification;
  final DateTime heureNotification;
  MessageNotification({
    required this.idNotification,
    required this.categorieNotification,
    required this.idUserDestinationNotification,
    required this.messageNotification,
    required this.heureNotification,
  });
}

//////////////////////// La class des couleurs principales ////////////////////////////!SECTION
// 7.

class MesCouleurs {
  static Color bleuPrincipale = Color(0xFF0EA5E9);
  static Color jaunePrincipale = Color(0xFFFFC727);
  static Color marronPrincipale = Color(0xFF5B271E);
  static Color blancPrincipale = Color(0xFFF9F4F4);
}

////////////////////////// La class des categories cours ////////////////////////////////!SECTION
/// 8.

final List<String> categoriesModules = [
  'Tous',
  'Populaires',
  'Graphic Design',
  'Developpement',
  'Informatique',
];
