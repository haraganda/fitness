// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class workoutscreen extends StatefulWidget {
  const workoutscreen(BuildContext context, {super.key});

  @override
  State<workoutscreen> createState() => workoutscreenState();
}

class workoutscreenState extends State<workoutscreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}