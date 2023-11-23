import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Debugging Challenge 2 -2 ',
      home: ColorChangerScreen(),
    );
  }
}

class ColorChangerScreen extends StatefulWidget {
  const ColorChangerScreen({super.key});

  @override
 State<ColorChangerScreen> createState() => _ColorChangerScreenState();
}

class _ColorChangerScreenState extends State<ColorChangerScreen> {
  Color backgroundColor = Colors.white;

  void changeColor() {
    setState(() {
      if (backgroundColor == Colors.white) {
        backgroundColor = Colors.blue;
      } else  {
        backgroundColor = Colors.white;
      }
      if (backgroundColor == Colors.blue) {
        backgroundColor = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Changer'),
      ),
      body: Container(
        color: backgroundColor,
        child: Center(
          child: ElevatedButton(
            onPressed: changeColor,
            child: const Text('Change Color'),
          ),
        ),
      ),
    );
  }
}
