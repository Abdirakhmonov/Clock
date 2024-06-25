import 'dart:math';

import 'package:flutter/material.dart';

class ClockPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final x = size.width;
    final y = size.height;
    final center = Offset(x / 2, y / 2);
    final radius = min(x / 2, y / 2);
    final dateTime = DateTime.now();

    var clockFacePaint = Paint();
    clockFacePaint.color = const Color(0xff414673);
    clockFacePaint.style = PaintingStyle.fill;

    var borderPaint = Paint();
    borderPaint.color = Colors.white;
    borderPaint.style = PaintingStyle.stroke;
    borderPaint.strokeWidth = 14;

    var secondPaint = Paint();
    secondPaint.color = Colors.amber;
    secondPaint.style = PaintingStyle.stroke;
    secondPaint.strokeWidth = 5;
    secondPaint.strokeCap = StrokeCap.round;

    var minutePaint = Paint();
    minutePaint.color = Colors.blue;
    minutePaint.style = PaintingStyle.stroke;
    minutePaint.strokeWidth = 8;
    minutePaint.strokeCap = StrokeCap.round;

    var hourPaint = Paint();
    hourPaint.color = Colors.purple.shade400;
    hourPaint.style = PaintingStyle.stroke;
    hourPaint.strokeWidth = 11;
    hourPaint.strokeCap = StrokeCap.round;

    canvas.drawCircle(center, radius - 40, clockFacePaint);
    canvas.drawCircle(center, radius - 40, borderPaint);

    final secondLine = radius - 60;
    final minuteLine = radius - 80;
    final hourLine = radius - 100;

    final secondAngle = dateTime.second * 2 * pi / 60;
    final minuteAngle = (dateTime.minute + dateTime.second / 60) * 2 * pi / 60;
    final hourAngle = (dateTime.hour % 12 + dateTime.minute / 60) * 2 * pi / 12;

    final hourX = center.dx + hourLine * cos(hourAngle - pi / 2);
    final hourY = center.dy + hourLine * sin(hourAngle - pi / 2);
    canvas.drawLine(center, Offset(hourX, hourY), hourPaint);

    final minuteX = center.dx + minuteLine * cos(minuteAngle - pi / 2);
    final minuteY = center.dy + minuteLine * sin(minuteAngle - pi / 2);
    canvas.drawLine(center, Offset(minuteX, minuteY), minutePaint);

    final secondX = center.dx + secondLine * cos(secondAngle - pi / 2);
    final secondY = center.dy + secondLine * sin(secondAngle - pi / 2);
    canvas.drawLine(center, Offset(secondX, secondY), secondPaint);

    var centerCirclePaint = Paint();
    centerCirclePaint.color = Colors.white;
    centerCirclePaint.style = PaintingStyle.fill;
    canvas.drawCircle(center, 10, centerCirclePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
