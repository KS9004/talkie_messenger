import 'package:get/get.dart';
import 'package:talkie/controller/userDataController.dart';
import 'package:talkie/controller/userSettingController.dart';
import 'package:talkie/models/messageModel.dart';
import 'package:talkie/models/usermodel.dart';
import 'package:talkie/utils/userDatabase.dart';

import 'messageController.dart';

class UserController extends GetxController {
  Rx<List<User>> userModel = Rx<List<User>>();

  List<User> get getUser =>userModel.value;

  Rx<List<MessageModel>> messageModel = Rx<List<MessageModel>>();
  List<MessageModel> get getMessage => messageModel.value;
  RxBool offline = false.obs;

  void onInit(){
    userModel.bindStream(UserDatabase().getUser());
    messageModel.bindStream(UserDatabase().getMessage());
    Get.put(UserDataController());
    Get.put(UserSettingController());
    Get.put(MessageController());
  }
}