

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:talkie/models/messageModel.dart';
import 'package:talkie/models/usermodel.dart';

class UserDatabase {
  FirebaseFirestore user = FirebaseFirestore.instance;

 Future<dynamic> sendMessage(String messageData,String messageType)async{
    await user.collection("user").doc("1").collection("messageContent").add(
        {
          'messageData':"${messageData}",
          'messageType':"${messageType}",
          'time':"${Timestamp.now().seconds}"
        });
  }

  Stream<List<User>> getUser (){
    return user.collection('user').snapshots().map((QuerySnapshot querySnapshot){
      List<User> retUserVal = [];
      querySnapshot.docs.forEach((element) {
        retUserVal.add(User.fromDocumentSnpashot(element));
      });
      return retUserVal;
    });
  }
  Stream<List<MessageModel>> getMessage (){
    return user.collection('user').doc("1").collection("messageContent").snapshots().map((QuerySnapshot querySnapshot){
      List<MessageModel> retUserVal = [];
      querySnapshot.docs.forEach((element) {
        retUserVal.add(MessageModel.fromDocumentSnpashot(element));
      });
      return retUserVal;
    });
  }
}