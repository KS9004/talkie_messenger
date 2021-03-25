
import 'package:get/get.dart';
import 'package:talkie/controller/userController.dart';
import 'package:talkie/controller/userDataController.dart';
class TalkieBinding extends Bindings{

  @override
  void dependencies() {
   Get.lazyPut(() => UserController());
  }
}
