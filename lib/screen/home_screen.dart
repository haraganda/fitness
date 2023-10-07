// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project/screen/workouts/workout1_1.dart';
import 'package:project/utils/color_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
   ], 
   begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
            ),
                 Workout(context, false, (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => workout1()) );
                     }) 
                 
            ]  
                )
            )
          )
          )
    );
    }
      workout1() {}
  }
  

