import 'package:flutter/material.dart';

class Motivation extends StatefulWidget {
  const Motivation({super.key});

  @override
  State<Motivation> createState() => _MotivationState();
}

class _MotivationState extends State<Motivation> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [_header()]));
  }
}

Widget _header() {
  return ListTile(
    title: Text(
      'Motivation',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    subtitle: Text('Get inspired and stay motivated'),
  );
}

void _Playlistmodal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => Column(children: []),
  );
}
