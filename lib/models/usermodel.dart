import 'package:cloud_firestore/cloud_firestore.dart';
class User {
  String title;
  String email;
  int phoneNumber;
   String uMessage;

   User({this.title,this.email,this.phoneNumber,this.uMessage});

   User.fromDocumentSnpashot(DocumentSnapshot doc){

     title = doc.data()['name'];
     email = doc.data()['email'];
     phoneNumber = doc.data()['phoneNumber'];
     uMessage = doc.data()['uMessage'];
   }

}
