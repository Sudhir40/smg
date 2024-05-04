import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:projectamit/login_page_ii.dart';

class splash_screen extends StatefulWidget{
  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4),(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context)=>Login_page_ii()));
    });
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Container(
          child: Lottie.asset(
            'assets/animation/splash.json',
            height: 300,
             reverse: true,
            repeat: true,
            fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
}