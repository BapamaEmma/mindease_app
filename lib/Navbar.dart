import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        tabs: [
          GButton(icon: Icons.home, text: 'Home'),
          GButton(icon: Icons.self_improvement_rounded, text: 'Breathe'),
          GButton(icon: Icons.book, text: 'Journal'),
          GButton(icon: Icons.person, text: 'Profile'),
        ],
      ),
    );
  }
}
