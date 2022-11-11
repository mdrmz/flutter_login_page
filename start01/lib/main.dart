import 'package:flutter/material.dart';
import 'package:start01/login_page.dart';

void main() {
  runApp(
    benim(),
  );
}

class benim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Login());
  }
}
