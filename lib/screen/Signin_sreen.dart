import 'package:flutter/material.dart';
import 'package:project/reusable_widget/reusable_widget.dart';
import 'package:project/screen/home_screen.dart';
import 'package:project/utils/color_utils.dart';

class Signinscreen extends StatefulWidget {
  const Signinscreen({super.key});

  @override
  State<Signinscreen> createState() => _SigninscreenState();
}
class _SigninscreenState extends State<Signinscreen> {
   
  TextEditingController  passwordTextcontroller = TextEditingController();
  TextEditingController  emailtextcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            hexStringtoColor("8B0000"),
            hexStringtoColor("800080"),
            hexStringtoColor("8B0000")
          ],  begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                 20, MediaQuery.of(context).size.height * 0.2, 20, 0),
                child: Column(
                  children: <Widget>[
                    logoWidget("assets/images/logo1.png"),
                    const SizedBox(
                      height: 30,
                    ),
                     reusableTextField("Enter UserName", Icons.person_outline, false,
                    emailtextcontroller),
                    const SizedBox(
                      height: 20,
                    ),
                    reusableTextField("Enter Password", Icons.lock_outline, true,
                    passwordTextcontroller),
                    const SizedBox(
                      height: 20,
                      ),
                    signInsignUpButton(context, true,() {
                        Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()) );}),
                    
                    signUpOption()
                  ],
               ),
            ),
        ),
     ),
  );
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
          "Do I not have an account?",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  );
}
}