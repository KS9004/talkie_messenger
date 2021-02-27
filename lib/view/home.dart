import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff191720),
      body: SafeArea(
       child: Center(
         child: Column(

           children: [
             Padding(
               padding: EdgeInsets.only(top:90.0),
               child: CircleAvatar(
                 radius:110,
                 backgroundColor: Color(0xff12121F),
                 child: CircleAvatar(
                   radius: 95,
                   backgroundImage: AssetImage('asset/MY_pic.jpg'),
                 ),
               ),
             ),
             Text("Mr.Saurabh",style: GoogleFonts.barlow(
               textStyle: TextStyle(color: Colors.white,
               fontWeight: FontWeight.bold,
               fontSize: 40.0)
             ),),
             Text("saurabhsingh9004@gmail.com",style: GoogleFonts.barlow(
                 textStyle: TextStyle(color: Colors.white,
                     fontWeight: FontWeight.bold,
                     fontSize: 25.0)
             ),)
           ],
         ),
       ),
      ),
    );
  }
}
