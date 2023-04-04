import 'package:cloud_firestore/cloud_firestore.dart';

class Utilisateur {
  //attributs
  late String id;
  late String lastname;
  late String name;
  String? avatar;
  DateTime? birthday;
  String? nickname;
  late String email;
  List? favoris;





  //un ou des constructeurs
 Utilisateur(DocumentSnapshot snapshot){
   id = snapshot.id;
   Map<String,dynamic> map = snapshot.data()as Map<String,dynamic>;
   lastname = map['NOM'];
   name = map['PRENOM'];
   email = map['EMAIL'];
   avatar = map["AVATAR"] ?? "";
   favoris = map["FAVORIS"] ?? [];
   Timestamp? timeprovisoire = map["BIRTHDAY"];
   if(timeprovisoire == null){
     birthday = DateTime.now();
   }
   else
     {
       birthday = timeprovisoire.toDate();
     }

 }


 Utilisateur.empty(){
   id = "";
   lastname ="";
   name ="";
   email ="";
 }




  //méthode


}