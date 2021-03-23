import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel{
  String messageData;
  String messageType;
  MessageModel({this.messageData,this.messageType});

  MessageModel.fromDocumentSnpashot(DocumentSnapshot doc){

    messageData = doc.data()['messageData'];
    messageType = doc.data()['messageType'];

  }
}