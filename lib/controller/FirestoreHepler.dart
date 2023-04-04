//C'est de faire les opérations sur la base de donnée

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirestoreHelper {

  //attributs
  final auth = FirebaseAuth.instance;
  final storage = FirebaseStorage.instance;
  final cloudUsers = FirebaseFirestore.instance.collection("UTILISATEURS");
  final cloudMessage = FirebaseFirestore.instance.collection("MESSAGES");




  //méthode

  //créer un tilisateur dans la base


//se connecter à un compte


//supprimer un utlisateur



//mise à jour des infos utlisateurs


//ajouter un message



//supprimer un message


// upload une image






}