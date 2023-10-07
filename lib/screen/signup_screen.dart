// ignore_for_file: avoid_web_libraries_in_flutter
import 'dart:js';
import 'package:flutter/material.dart';
import 'package:project/reusable_widget/reusable_widget.dart';
import 'package:project/screen/home_screen.dart';
import 'package:project/utils/color_utils.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key}); 
  
@override
  _SignUpScreenState  createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController  passwordTextcontroller = TextEditingController();
  TextEditingController  emailtextcontroller = TextEditingController();
  TextEditingController  userNametextcontroller = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            hexStringtoColor("8B0000"),
            hexStringtoColor("800080"),
            hexStringtoColor("8B0000")
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                 logoWidget("assets/images/logo2.png"),
                    const SizedBox(
                      height: 20,
                    ),
                  reusableTextField("Enter UserName", Icons.person_outline, false,
                    userNametextcontroller),
                   const SizedBox(
                      height: 30,
                    ),
                    reusableTextField("Enter Email Id", Icons.person_outline, false,
                    emailtextcontroller),
                    const SizedBox(
                      height: 20,
                    ),
                    reusableTextField("Enter Password", Icons.lock_outline, true,
                    passwordTextcontroller),
                    const SizedBox(
                      height: 20,
                      ),
                     signInsignUpButton(context, false, (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()) );
                      
                     }) 
              ],
            ),
          ))),
    );
  }
}
 Row signUpOption(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("",
        style: TextStyle(color: Colors.white)),
      GestureDetector(
        onTap: () {
       Navigator.push(context as BuildContext,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
        child: const Text(
          "Already have an account?",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  );
}
