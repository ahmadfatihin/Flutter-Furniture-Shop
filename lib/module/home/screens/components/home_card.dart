import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:furniture_shop/const/colors.dart';
import 'package:furniture_shop/const/size.dart';
import 'package:furniture_shop/const/text.dart';
import 'package:furniture_shop/gen/assets.gen.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 185,
      height: 243,
      decoration: BoxDecoration(
        borderRadius: kDefaultBorderRadius,
        color: whiteBackground,
        boxShadow: [
          BoxShadow(
            color: grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20)),
              child: Image.asset(Assets.images.furniture1.path)),
          Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Stylish Chair",
                  style: medium.copyWith(fontSize: 14),
                ),
                Row(
                  children: [Text("\$170")],
                )
              ])
        ],
      ),
    );
  }
}
