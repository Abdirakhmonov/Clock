
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../widgets/clock_painter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(
      const Duration(seconds: 1),
          (timer) {
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff282D41),
      appBar: AppBar(
        title: const Text("Clock"),
        centerTitle: true,
      ),
      body: Center(
        child: CustomPaint(
          size: const Size(400, 400),
          painter: ClockPainter(),
        ),
      ),
    );
  }
}


