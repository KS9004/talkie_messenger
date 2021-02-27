import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff191720),
      body: SafeArea(
       child: Column(
         children: [
           CircleAvatar(
             radius: 55,
             backgroundColor: Color(0xffFDCF09),
             child: CircleAvatar(
               radius: 50,
               backgroundImage: AssetImage(''),
             ),
           )
         ],
       ),
      ),
    );
  }
}
