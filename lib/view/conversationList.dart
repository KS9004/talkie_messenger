import 'package:flutter/material.dart';
import 'package:talkie/controller/userController.dart';
import 'package:talkie/view/chatDetailsPage.dart';
import 'package:get/get.dart';
class ConversationList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: GetX(
        init:Get.find<UserController>(),
        // ignore: missing_return
        builder: (UserController userController)  {
          if(userController != null && userController.getUser != null){
            var userData = userController.getUser;
            return GestureDetector(
              onTap: ()=>Get.to(ChatDetailsPage()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage("asset/MY_pic.jpg"),
                  ),
                  RichText(
                    text: TextSpan(
                        text: userData[0].title,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: "\n${userData[0].uMessage}",
                              style: TextStyle(fontSize: 15.0))
                        ]),
                  ),
                  Column(
                    children: [
                      Text("08:00"),
                      TextButton.icon(
                        onPressed: null,
                          icon: Icon(
                            Icons.circle,
                            color: Colors.green,
                          ),
                          label: Text("3"))
                    ],
                  )
                ],
              ),
            );
          }




        },
      ),
    );
  }
}