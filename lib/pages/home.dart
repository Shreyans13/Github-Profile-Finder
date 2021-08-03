import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Color(0xfff3d503),
        child: Chip(
          avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900, child: const Text('AH')),
          label: const Text('Hamilton'),
        ),
      ),
    );
  }
}
