import 'package:flutter/cupertino.dart';
import 'package:talkie/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talkie/view/sign_up.dart';

class SignIn extends GetWidget<AuthController> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff191720),
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // SizedBox(height: 250,),
              Text("Let's sign you in.",style: GoogleFonts.abrilFatface(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                ),
              ),
              ),
              Text("Welcome back.",style: GoogleFonts.abrilFatface(
                textStyle: TextStyle(
                  color: Colors.white70,
                  fontSize: 40.0,
                ),),),
              Text("You've been missed!",style: GoogleFonts.abrilFatface(
                textStyle: TextStyle(
                  color: Colors.white70,
                  fontSize: 40.0,
                ),),),
              // Image.sasset('assets/sign_up2.svg',width: 400,),
              Expanded(
                child: Container(
                  height: 600,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xff191720),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0),topRight: Radius.circular(40.0))
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 30.0,left: 20.0,right: 20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sign In',style: GoogleFonts.aBeeZee(textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 60.0,
                              fontWeight: FontWeight.bold
                          ),)
                          ),
                          SizedBox(height: 45.0,),
                          // Text("Email",style: GoogleFonts.exo2(
                          //   textStyle: TextStyle(
                          //       fontSize: 25.0,
                          //       fontWeight: FontWeight.bold
                          //   ),
                          // ),
                          // ),
                          SizedBox(height: 5.0,),
                          TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              fillColor:Color(0xff1E1C24),
                              filled: true,
                              hintStyle: GoogleFonts.exo2(
                                textStyle: TextStyle(color:Color(0xffFFFFFF)),
                              ),
                              prefixIcon: Icon(Icons.email_rounded,color:Color(0xffFFFFFF),),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              hintText: 'Enter Email Here',
                            ),
                            autofocus: false,
                          ),
                          SizedBox(height: 20.0,),
                          // Text("Password",style: GoogleFonts.exo2(
                          //   textStyle: TextStyle(
                          //       fontSize: 25.0,
                          //       fontWeight: FontWeight.bold
                          //   ),
                          // ),
                          // ),
                          SizedBox(height: 5.0,),
                          TextFormField(
                            controller: passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              fillColor: Color(0xff1E1C24),
                              filled: true,
                              hintStyle: GoogleFonts.exo2(
                                textStyle: TextStyle(color:Color(0xffFFFFFF)),
                              ),
                              prefixIcon: Icon(Icons.lock_rounded,color:Color(0xffFFFFFF)),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              hintText: 'Enter Password Here',
                            ),
                            autofocus: false,
                            obscureText: true,
                          ),
                          SizedBox(height: 20.0,),
                          SizedBox(height:50.0,),
                          Container(
                            width: double.infinity,
                            height: 60.0,
                            decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(15.0)
                            ),
                            child: MaterialButton(
                              onPressed: (){
                              },
                              child: Text("Log In",style:GoogleFonts.aBeeZee(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.0
                                ),
                              ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0,),
                          Row(children: [
                            Text("Please register here",style:GoogleFonts.aBeeZee(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0
                              ),),
                            ),
                            FlatButton(onPressed: ()=>Get.to(SignUp()),
                              child: Text("Sign Up",style:GoogleFonts.aBeeZee(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19.0,
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                            ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),

    );
  }
}
