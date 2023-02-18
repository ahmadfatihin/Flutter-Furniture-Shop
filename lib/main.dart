import 'package:flutter/material.dart';
import 'package:furniture_shop/const/themes.dart';
import 'package:furniture_shop/module/home/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightThemeData(context),
      home: const HomeScreen(),
    );
  }
}
