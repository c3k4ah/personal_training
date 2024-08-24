import 'package:flutter/material.dart';

class CurvedCard extends StatelessWidget {
  final double width;
  final double? radius;
  const CurvedCard({
    super.key,
    required this.width,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 30),
      child: CustomPaint(
        size: Size(width, (width * 1.125).toDouble()),
        painter: CurderCardPainter(),
      ),
    );
  }
}

class CurderCardPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint painFillOne = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0003750, size.height * 0.0739556);
    path_0.lineTo(0, size.height * 0.0011111);
    path_0.lineTo(size.width * 0.2500000, 0);
    path_0.lineTo(size.width * 0.3774750, size.height * 0.0009556);
    path_0.quadraticBezierTo(size.width * 0.4939000, size.height * -0.0068444,
        size.width * 0.5310250, size.height * 0.0320222);
    path_0.quadraticBezierTo(size.width * 0.5576250, size.height * 0.0708889,
        size.width * 0.5711750, size.height * 0.1097333);
    path_0.quadraticBezierTo(size.width * 0.5907000, size.height * 0.1666222,
        size.width * 0.6334750, size.height * 0.2033778);
    path_0.quadraticBezierTo(size.width * 0.6757500, size.height * 0.2353333,
        size.width * 0.7500500, size.height * 0.2345333);
    path_0.quadraticBezierTo(size.width * 0.8589750, size.height * 0.2422000,
        size.width * 0.8915500, size.height * 0.2432000);
    path_0.cubicTo(
        size.width * 0.9196750,
        size.height * 0.2435778,
        size.width * 0.9454000,
        size.height * 0.2527111,
        size.width * 0.9747750,
        size.height * 0.2800444);
    path_0.quadraticBezierTo(size.width * 1.0045250, size.height * 0.3294222,
        size.width * 1.0012500, size.height * 0.4466667);
    path_0.lineTo(size.width * 0.9987500, size.height * 0.5522222);
    path_0.lineTo(size.width * 0.9987500, size.height * 0.6622222);
    path_0.lineTo(size.width * 0.9975000, size.height * 0.7766667);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(size.width * 0.7512500, size.height);
    path_0.lineTo(size.width * 0.6250000, size.height);
    path_0.lineTo(size.width * 0.5000000, size.height);
    path_0.lineTo(size.width * 0.3750000, size.height);
    path_0.lineTo(size.width * 0.2500000, size.height);
    path_0.lineTo(size.width * 0.1250000, size.height);
    path_0.lineTo(size.width * 0.0016750, size.height);
    path_0.lineTo(size.width * 0.0012500, size.height * 0.6633333);
    path_0.lineTo(0, size.height * 0.4444444);
    path_0.lineTo(0, size.height * 0.2222222);
    path_0.lineTo(0, size.height * 0.1111111);

    canvas.drawPath(path_0, painFillOne);

    // Layer 1

    Paint paintStrokeZero = Paint()
      ..color = Colors.black
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
