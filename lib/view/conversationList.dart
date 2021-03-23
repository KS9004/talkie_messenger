import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talkie/controller/userController.dart';
import 'package:talkie/view/chatDetailsPage.dart';
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
            var userMessage = userController.getMessage;
            return ListView.builder(
                physics: BouncingScrollPhysics(),
              shrinkWrap: true,
                itemCount: userData.length,
                itemBuilder: (context ,index){
                 return Padding(
                   padding: const EdgeInsets.symmetric(vertical:8.0),
                   child: GestureDetector(
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
                               text: userData[index].title,
                               style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 30.0,
                                   fontWeight: FontWeight.bold),
                               children: [
                                 TextSpan(
                                     text: "\n${userMessage[index].messageData}",
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
                   ),
                 );
            });

          }




        },
      ),
    );
  }
}