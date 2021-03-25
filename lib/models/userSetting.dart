import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class UserSetting {
  String language;
  int PhoneNumber;
  String Email;
  bool SignOut;
  bool onlineStatus;
  UserSetting({this.Email,this.language,this.PhoneNumber,this.SignOut});

  UserSetting.fromDocumentSnpashot(DocumentSnapshot doc){
    language = doc.data()['language'];
    PhoneNumber = doc.data()['phoneNumber'];
    Email = doc.data()['email'];
    SignOut = doc.data()['signOut'];
    onlineStatus = doc.data()['onlineStatus'];

  }
}