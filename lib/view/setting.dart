import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:get/get.dart';



class Setting_Widget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
      ),
      body: Container(
        width: double.infinity,
        child: SettingsList(
          contentPadding: EdgeInsets.only(top:Get.height*0.02),

          sections: [
            SettingsSection(

              title: 'Language',
              titleTextStyle: TextStyle(
                  fontSize: Get.height*0.03
              ),
              tiles: [
                SettingsTile(
                  title: 'Language',
                  subtitle: 'English',
                  leading: Icon(Icons.language),
                  onPressed: (BuildContext context) {},
                ),
              ],
            ),
            SettingsSection(
              title: 'Account',
              titleTextStyle: TextStyle(
                  fontSize: Get.height*0.03
              ),
              tiles: [
                SettingsTile(title: "Profile",
                  leading: Icon(Icons.account_box_outlined),
                ),
                SettingsTile(title: "Phone Number",
                  leading: Icon(Icons.phone),
                ),
                SettingsTile(title: "Email",
                  leading: Icon(Icons.email),
                ),
                SettingsTile(title: "Sign Out",
                  leading: Icon(Icons.logout),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

