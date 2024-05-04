import 'package:flutter/material.dart';
import 'login_page.dart';
import 'login_page_ii.dart';
import 'splash_screen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    //  home: Login_page_ii(),
      home: splash_screen(),
    );
  }
}


