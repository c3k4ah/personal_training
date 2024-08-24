import 'package:flutter/material.dart';
import 'package:training/features/complexe_ui/mini_curved_card.dart';

import 'big_curved_card.dart';

class ComplexeUiPage extends StatefulWidget {
  const ComplexeUiPage({super.key});

  @override
  State<ComplexeUiPage> createState() => _ComplexeUiPageState();
}

class _ComplexeUiPageState extends State<ComplexeUiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text('Complexe UI Page'),
      ),
      body: const Center(
        child: BigCurvedCard(
          width: 350,
          color: Colors.pink,
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFillZero = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2895167, size.height * 0.1080250);
    path_0.quadraticBezierTo(size.width * 0.4338667, size.height * 0.1467750,
        size.width * 0.5009000, size.height * 0.1477500);
    path_0.cubicTo(
        size.width * 0.5662500,
        size.height * 0.1482000,
        size.width * 0.8819000,
        size.height * 0.0744500,
        size.width * 0.9164167,
        size.height * 0.1257000);
    path_0.cubicTo(
        size.width * 0.9498167,
        size.height * 0.1730250,
        size.width * 0.9341000,
        size.height * 0.3751750,
        size.width * 0.9350000,
        size.height * 0.4987500);
    path_0.cubicTo(
        size.width * 0.9333000,
        size.height * 0.6275250,
        size.width * 0.9511167,
        size.height * 0.8003750,
        size.width * 0.9165167,
        size.height * 0.8750750);
    path_0.cubicTo(
        size.width * 0.8666833,
        size.height * 0.9262000,
        size.width * 0.5832500,
        size.height * 0.8498750,
        size.width * 0.4998333,
        size.height * 0.8491000);
    path_0.cubicTo(
        size.width * 0.4160000,
        size.height * 0.8506500,
        size.width * 0.1180500,
        size.height * 0.9222000,
        size.width * 0.0844333,
        size.height * 0.8718250);
    path_0.cubicTo(
        size.width * 0.0514167,
        size.height * 0.8247000,
        size.width * 0.0653333,
        size.height * 0.6221750,
        size.width * 0.0644000,
        size.height * 0.5000500);
    path_0.cubicTo(
        size.width * 0.0645167,
        size.height * 0.3758000,
        size.width * 0.0503833,
        size.height * 0.1742500,
        size.width * 0.0841667,
        size.height * 0.1262500);
    path_0.quadraticBezierTo(size.width * 0.1164667, size.height * 0.0765750,
        size.width * 0.2891667, size.height * 0.1075000);

    canvas.drawPath(path_0, paintFillZero);

    // Layer 1

    Paint paintStrokeZero = Paint()
      ..color = const Color.fromARGB(245, 255, 255, 255)
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
