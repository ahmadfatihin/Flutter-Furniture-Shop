import 'package:flutter/material.dart';
import 'package:furniture_shop/module/home/screens/sections/home_appbar.dart';
import 'package:furniture_shop/module/home/screens/sections/home_header.dart';
import 'package:furniture_shop/module/home/screens/sections/home_recommended.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppbar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          HomeHeader(),
          SizedBox(
            height: 30,
          ),
          Expanded(child: HomeRecommended())
        ],
      ),
    );
  }
}
