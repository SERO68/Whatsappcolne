import 'dart:async';

import 'package:depi/myhome.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) =>  Myhome()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DecoratedBox(
                decoration: const BoxDecoration(
          image: DecorationImage(image:  AssetImage("images/back.png",),fit: BoxFit.cover),),
                child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "images/logo.png",
              height: 100,
              width: 100,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Whatsapp',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),
            ),
          ],
        ),
                ),
              ),
      ),
    );
  }
}
