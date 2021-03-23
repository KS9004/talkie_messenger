import 'package:get/get.dart';
import 'package:talkie/models/messageModel.dart';
import 'package:talkie/utils/userDatabase.dart';

class MessageController extends GetxController{
  Rx<List<MessageModel>> messageModel = Rx<List<MessageModel>>();
  List<MessageModel> get getMessage => messageModel.value;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    messageModel.bindStream(UserDatabase().getMessage());
  }
}