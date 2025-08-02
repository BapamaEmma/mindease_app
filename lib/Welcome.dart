// ignore_for_file: non_constant_identifier_names, file_names, unused_label

import 'package:flutter/material.dart';
import 'package:mindease_app/Signup.dart';
import 'package:mindease_app/Signin.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Logo
          Positioned(
            top: 2,
            left: MediaQuery.of(context).size.width / 2 - 95,
            child: _Logo(),
          ),

          // Illustration
          Positioned(
            top: 140,
            left: MediaQuery.of(context).size.width / 2 - 180,
            child: _Illustration(),
          ),

          // Title
          Positioned(
            top: 450,
            left: MediaQuery.of(context).size.width * 0.1,
            right: MediaQuery.of(context).size.width * 0.1,
            child: _Title(),
          ),

          Positioned(
            top: 650,
            left: MediaQuery.of(context).size.width * 0.0,
            right: MediaQuery.of(context).size.width * 0.0,
            child: _buildButtons(context),
          ),
        ],
      ),
    );
  }
}

Widget _Logo() {
  return Image.asset('assets/images/logo.png', width: 190, height: 190);
}

Widget _Illustration() {
  return Image.asset('assets/images/illustration.png', width: 360, height: 240);
}

Widget _Title() {
  return Column(
    children: [
      Text(
        'Breath.Reflect.Heal',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 8),
      Text(
        'Join a space designed to help you slow down, check in with yourself, and feel better every day.',
        style: TextStyle(fontSize: 16, color: Colors.grey),
      ),
    ],
  );
}

Widget _buildButtons(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Signup()),
            );
            style:
            ElevatedButton.styleFrom(
              backgroundColor: Colors.green[600],
              minimumSize: const Size(double.infinity, 50),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF008080),
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: const Text(
            'Already have an account?',
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Inter',
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 15),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Signin()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(color: Colors.black, width: 0.3),
            ),
          ),
          child: const Text(
            'Sign in',
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Inter',
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}
