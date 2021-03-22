import 'package:get/get.dart';
import 'package:talkie/models/usermodel.dart';
import 'package:talkie/packages/userDatabase.dart';

class UserController extends GetxController {
  Rx<List<User>> userModel = Rx<List<User>>();

  List<User> get getUser =>userModel.value;

  void onInit(){
    userModel.bindStream(UserDatabase().getUser());
  }
}