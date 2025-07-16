// ignore_for_file: non_constant_identifier_names, annotate_overrides

import 'package:flutter/material.dart';

class Module {
  String nom_module;
  String categorie_module;
  String image_module;
  String taille_module;
  String duree_module;
  String note_module;

  Module({
    required this.nom_module,
    required this.categorie_module,
    required this.image_module,
    required this.taille_module,
    required this.duree_module,
    required this.note_module,
  });
}

class MesModules extends Module {
  String nom_module;
  String categorie_module;
  String image_module;
  String taille_module;
  String duree_module;
  String note_module;
  int niveau;

  MesModules({
    required this.nom_module,
    required this.categorie_module,
    required this.image_module,
    required this.taille_module,
    required this.duree_module,
    required this.note_module,
    required this.niveau,
  }) : super(
         nom_module: nom_module,
         categorie_module: categorie_module,
         image_module: image_module,
         taille_module: taille_module,
         duree_module: duree_module,
         note_module: note_module,
       );
}

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
