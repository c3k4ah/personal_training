import 'package:flutter/material.dart';

class BigCurvedCard extends StatelessWidget {
  final double width;
  final Color color;
  final double? radius;
  const BigCurvedCard({
    super.key,
    required this.width,
    this.radius, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 30),
      child: CustomPaint(
        size: Size(width, (width * 1.125).toDouble()),
        painter: BigCurvedCardPainter(color: color),
      ),
    );
  }
}

class BigCurvedCardPainter extends CustomPainter {
  final Color color;

  BigCurvedCardPainter({super.repaint, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFillZero = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0002143, size.height * 0.0416000);
    path_0.lineTo(0, size.height * 0.0006250);
    path_0.lineTo(size.width * 0.1428571, 0);
    path_0.lineTo(size.width * 0.2157000, size.height * 0.0005375);
    path_0.lineTo(size.width * 0.3565000, size.height * 0.0001375);
    path_0.quadraticBezierTo(size.width * 0.4361429, size.height * -0.0030125,
        size.width * 0.4535429, size.height * 0.0084625);
    path_0.cubicTo(
        size.width * 0.4817714,
        size.height * 0.0292500,
        size.width * 0.4783571,
        size.height * 0.0368250,
        size.width * 0.4891714,
        size.height * 0.0475375);
    path_0.cubicTo(
        size.width * 0.5049857,
        size.height * 0.0677875,
        size.width * 0.4973571,
        size.height * 0.0691250,
        size.width * 0.5317429,
        size.height * 0.0901625);
    path_0.quadraticBezierTo(size.width * 0.5753714, size.height * 0.1027250,
        size.width * 0.6238857, size.height * 0.1006000);
    path_0.lineTo(size.width * 0.7758571, size.height * 0.1007375);
    path_0.quadraticBezierTo(size.width * 0.8827143, size.height * 0.1029125,
        size.width * 0.9147571, size.height * 0.1051875);
    path_0.cubicTo(
        size.width * 0.9464429,
        size.height * 0.1112500,
        size.width * 0.9376571,
        size.height * 0.1052375,
        size.width * 0.9700429,
        size.height * 0.1269125);
    path_0.cubicTo(
        size.width * 0.9870571,
        size.height * 0.1472375,
        size.width * 0.9932143,
        size.height * 0.1583375,
        size.width * 0.9980857,
        size.height * 0.1794375);
    path_0.quadraticBezierTo(size.width * 1.0039857, size.height * 0.2155750,
        size.width * 1.0009571, size.height * 0.3414875);
    path_0.lineTo(size.width * 1.0004571, size.height * 0.4394000);
    path_0.lineTo(size.width * 1.0010429, size.height * 1.0007375);
    path_0.lineTo(size.width * 0.3542714, size.height * 1.0002000);
    path_0.lineTo(size.width * 0.2355143, size.height * 1.0023125);
    path_0.lineTo(size.width * 0.1135857, size.height * 1.0015375);
    path_0.lineTo(size.width * -0.0002857, size.height * 1.0017625);
    path_0.lineTo(size.width * -0.0013143, size.height * 0.8120000);
    path_0.lineTo(size.width * 0.0009571, size.height * 0.5625000);
    path_0.lineTo(size.width * 0.0007143, size.height * 0.3731250);
    path_0.lineTo(0, size.height * 0.2500000);
    path_0.lineTo(0, size.height * 0.1250000);
    path_0.lineTo(0, size.height * 0.0625000);

    canvas.drawPath(path_0, paintFillZero);

    // Layer 1

    Paint paintStrokeZero = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStrokeZero);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
