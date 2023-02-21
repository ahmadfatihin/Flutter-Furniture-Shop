// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:furniture_shop/const/colors.dart';

class DetailFlexibleSpace extends StatelessWidget {
  final String title;
  final String imagePath;
  const DetailFlexibleSpace({
    Key? key,
    required this.title,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      collapseMode: CollapseMode.pin,
      background: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Hero(
              tag: title ?? "",
              child: Image.asset(
                imagePath ?? "",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: -3,
            left: 0,
            right: 0,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: whiteBackground,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
              ),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.12,
                  height: 8,
                  decoration: BoxDecoration(
                      color: grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(42)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
