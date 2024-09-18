import 'package:depi/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Whatsapp',
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}