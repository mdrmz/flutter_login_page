import 'package:flutter/material.dart';

void main() {
  runApp(
    benim(),
  );
}

class benim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("selam"),
        ),
        body: Center(
            child: Container(
                color: Colors.white,
                child: Text("BİZİM AFFFETTİĞİMİZİ BİZ YAPSAK AFFETMEZLERDİ"))),
      ),
    );
  }
}
