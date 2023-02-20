import 'package:flutter/material.dart';
import 'package:furniture_shop/const/text.dart';
import 'package:furniture_shop/module/home/screens/sections/home_appbar.dart';
import 'package:furniture_shop/module/home/screens/sections/home_header.dart';
import 'package:furniture_shop/module/home/screens/sections/home_recommended.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: HomeAppbar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeader(),
            SizedBox(
              height: 30,
            ),
            Expanded(child: HomeRecommended())
          ],
        ),
      ),
    );
  }
}
