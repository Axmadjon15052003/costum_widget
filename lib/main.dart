import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyClass(),
    );
  }
}

class MyClass extends StatelessWidget {
  const MyClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      
      body: CustomPaint(
        painter: My(),
        child: Container(),
      ),
    );
  }
}

class My extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    canvas.drawCircle(Offset(size.width / 2, size.height * 3.5 / 10), 70,
        Paint()..color = Colors.white);
    canvas.drawCircle(Offset(size.width / 2, size.height * 5.5 / 10), 100,
        Paint()..color = Colors.white);
    canvas.drawCircle(Offset(size.width / 2, size.height * 8 / 10), 120,
        Paint()..color = Colors.white);
    paint.strokeWidth = 2;
    
    canvas.drawCircle(Offset(size.width * 5 / 10, size.height * 5 / 10), 4,
        Paint()..color = Colors.brown);
    canvas.drawCircle(Offset(size.width * 5 / 10, size.height * 5.3 / 10), 4,
        Paint()..color = Colors.brown);
    

    canvas.drawCircle(Offset(size.width * 5.2 / 10, size.height * 3.3 / 10), 5,
        Paint()..color = Colors.black);
    canvas.drawCircle(Offset(size.width * 4.8 / 10, size.height * 3.3 / 10), 5,
        Paint()..color = Colors.black);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}