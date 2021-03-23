
import 'package:get/get.dart';
import 'package:talkie/controller/messageController.dart';
import 'package:talkie/controller/userController.dart';
class TalkieBinding extends Bindings{

  @override
  void dependencies() {
   Get.lazyPut<UserController>(() => UserController());
  }
}
