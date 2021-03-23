import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';

import 'conversationList.dart';

class Home extends GetWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFEFEFE),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: deviceSize.height * 0.03,
                  horizontal: deviceSize.height * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Chatting",
                    style: GoogleFonts.aBeeZee(
                        textStyle:
                            TextStyle(fontSize: deviceSize.height * 0.03)),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: deviceSize.height * 0.03),
                      width: deviceSize.width * 0.30,
                      height: deviceSize.height * 0.14,
                      color: Colors.transparent,
                      child: SearchBar(
                        icon: Icon(
                          Icons.search,
                          size: deviceSize.height * 0.05,
                        ),
                      )),
                  IconButton(
                      icon: Icon(
                        Icons.add,
                        size: deviceSize.height * 0.05,
                      ),
                      onPressed: null),
                ],
              ),
            ),
            ConversationList(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Profile",

          ),
          BottomNavigationBarItem(icon: Icon(Icons.message),
          label: "Chats",
          ),
        ],
      ),
    );
  }
}


