import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talkie/controller/userController.dart';
import 'package:talkie/controller/userSettingController.dart';
import 'package:talkie/utils/userDatabase.dart';
import 'package:talkie/view/setting.dart';

class ChatDetailsPage extends StatelessWidget {
  TextEditingController message = TextEditingController();
  RxString messageData = ''.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("asset/MY_pic.jpg"),
                  maxRadius: 20,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Saruabh",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Obx((){
                        var statonline = Get.find<UserSettingController>().userSetting[0].onlineStatus;
                       return statonline?Text(
                          "Online",
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 13),
                        ):Text(
                         "Offline",
                         style: TextStyle(
                             color: Colors.grey.shade600, fontSize: 13),
                       );

                      }),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.settings),
                  color: Colors.black54,
                  onPressed: ()=>Get.to(Setting_Widget()),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      controller: message,
                      decoration: InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none),
                      onChanged: (value) {
                          messageData.value = value;


                      },
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      if(message.value!=null){
                        UserDatabase().sendMessage(messageData.value, "sender");
                        message.clear();
                      }

                    },
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 18,
                    ),
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  ),
                ],
              ),
            ),
          ),
          ChatShot(),
        ],
      ),
    );
  }
}

class ChatShot extends StatelessWidget {
  const ChatShot({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
        init: Get.find<UserController>(),
        builder: (messageController) {
          var getMessage = messageController.getMessage;
          return ListView.builder(
              itemCount: messageController.getMessage.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(
                      left: 14, right: 14, top: 10, bottom: 10),
                  child: Align(
                    alignment:
                        (getMessage[index].messageType == "receiver"
                            ? Alignment.topLeft
                            : Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:
                            (getMessage[index].messageType == "receiver"
                                ? Colors.grey.shade200
                                : Colors.blue[200]),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Text(
                        getMessage[index].messageData,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                );
              });
        });
  }
}
