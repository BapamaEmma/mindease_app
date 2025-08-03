import 'package:flutter/material.dart';

class Breathing extends StatefulWidget {
  const Breathing({super.key});

  @override
  State<Breathing> createState() => _BreathingState();
}

class _BreathingState extends State<Breathing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Breathing Exercises'),
        backgroundColor: Color(0xFF98C9C8),
      ),
      body: Center(
        child: Text(
          'Breathing exercises will be available here.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
