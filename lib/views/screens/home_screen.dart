import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/my_painter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ui.Image? image;

  @override
  void initState() {
    super.initState();
    loadImage().then((_) {
      setState(() {});
    });
  }

  Future<void> loadImage() async {
    final ByteData data = await rootBundle.load("assets/images/img.webp");
    final Uint8List bytes = data.buffer.asUint8List();
    final ui.Codec codec = await ui.instantiateImageCodec(bytes);
    final ui.FrameInfo frameInfo = await codec.getNextFrame();
    image = frameInfo.image;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CustomPaint(
          size: const Size(300, 300),
          painter: MyPainter(),
          child: const Text(
            "Hello world",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
