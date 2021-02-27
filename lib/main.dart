import 'package:talkie/controller/authBinding.dart';
import 'package:talkie/view/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AuthBinding(),
      debugShowCheckedModeBanner: false,
      title: 'Talkie',
      home: SignUp(),

    );
  }
}

