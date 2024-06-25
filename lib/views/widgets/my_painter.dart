import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  // final ui.Image? image;

  @override
  void paint(Canvas canvas, Size size) {
    // var paint = Paint();
    // paint.color = Colors.yellow;
    //   ..color = Colors.blue
    //   ..style = PaintingStyle.stroke
    //   ..strokeWidth = 10;
    //
    // canvas.drawCircle(Offset(size.width / 2, size.height / 2), 100, paint);
    // var oval = const Rect.fromLTWH(50, 200, 200, 100);
    // canvas.drawOval(oval, paint);
    // var paintRect = Paint();
    // paintRect.color = Colors.blue;
    // paintRect.style = PaintingStyle.stroke;
    // paintRect.strokeWidth = 10;
    //
    // var rect = const Rect.fromLTWH(50, 50, 200, 100);
    // canvas.drawRect(rect, paintRect);
    //
    // var path = Path();
    // path.moveTo(size.width / 2, size.height / 2 - 50);
    // path.lineTo(size.width / 2 + 40, size.height / 2 + 50);
    // path.lineTo(size.width / 2 - 50, size.height / 2 - 15);
    // path.lineTo(size.width / 2 + 50, size.height / 2 - 15);
    // path.lineTo(size.width / 2 - 40, size.height / 2 + 50);
    //
    // path.close();
    // canvas.drawPath(path, paint);

    // var textPainter = TextPainter(
    //   text: const TextSpan(
    //     text: "Hello Flutter!",
    //     style: TextStyle(color: Colors.black, fontSize: 24),
    //   ),
    //   textDirection: TextDirection.ltr,
    // );
    //
    // textPainter.layout(minWidth: 0, maxWidth: size.width);
    // var offset = const Offset(50, 200);
    // textPainter.paint(canvas, offset);
    // if (image != null) {
    //   canvas.drawImage(image!, Offset.zero, Paint());
    // }

    var paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    var rect = RRect.fromLTRBR(20, 0, 170, 100, const Radius.circular(8));
    canvas.drawRRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
