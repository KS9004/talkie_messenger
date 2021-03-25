import 'package:get/get.dart';
import 'package:talkie/models/userSetting.dart';
import 'package:talkie/utils/userDatabase.dart';
class UserSettingController extends GetxController{
  Rx<List<UserSetting>> userSet = Rx<List<UserSetting>>();
  List<UserSetting> get userSetting => userSet.value;

  @override
  void onInit() {
    super.onInit();
    userSet.bindStream(UserDatabase().getUserInfo());
  }
}