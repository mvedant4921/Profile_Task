// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unnecessary_this, unrelated_type_equality_checks

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logintask/pages/loginbutton.dart';

class SplaceScreen extends StatefulWidget {
  const SplaceScreen({super.key});

  @override
  State<SplaceScreen> createState() => _SplaceScreenState();
}

class _SplaceScreenState extends State<SplaceScreen> {
  redirectPage() {
    Timer(Duration(seconds: 2), () {
      Navigator.push((context),
          MaterialPageRoute(builder: (context) => LoginButtonScreen()));
    });
  }

  @override
  void initState() {
    redirectPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            // ignore: prefer_const_literals_to_create_immutables
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 3, 40, 97),
              Colors.blue,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          )),
    );
  }
}
