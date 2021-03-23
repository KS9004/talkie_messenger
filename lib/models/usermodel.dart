import 'package:cloud_firestore/cloud_firestore.dart';
class User {
  String title;
  String email;
  int phoneNumber;
   String uMessage;
   String messagetype;

   User({this.title,this.email,this.phoneNumber,this.uMessage,this.messagetype});

   User.fromDocumentSnpashot(DocumentSnapshot doc){

     title = doc.data()['name'];
     email = doc.data()['email'];
     phoneNumber = doc.data()['phoneNumber'];
     uMessage = doc.data()['uMessage'];
     messagetype = doc.data()['messageType'];
   }

}
