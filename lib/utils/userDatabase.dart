import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:talkie/models/usermodel.dart';

class UserDatabase {
  FirebaseFirestore user = FirebaseFirestore.instance;

  Stream<List<User>> getUser (){
    return user.collection('user').snapshots().map((QuerySnapshot querySnapshot){
      List<User> retUserVal = [];
      querySnapshot.docs.forEach((element) {
        retUserVal.add(User.fromDocumentSnpashot(element));
      });
      return retUserVal;
    });
  }
}