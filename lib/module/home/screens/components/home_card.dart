import 'package:flutter/material.dart';
import 'package:furniture_shop/const/colors.dart';
import 'package:furniture_shop/const/size.dart';
import 'package:furniture_shop/const/text.dart';
import 'package:furniture_shop/gen/assets.gen.dart';

class HomeCard extends StatelessWidget {
  final Map<String, dynamic> cardData;

  const HomeCard({Key? key, required this.cardData}) : super(key: key);

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
            color: grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(1, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20)),
              child: Image.asset(cardData['imagePath'])),
          Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    cardData['title'],
                    style: medium.copyWith(fontSize: 14),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, bottom: 10, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(cardData['price']),
                      Row(
                        children: [
                          Image.asset(
                            Assets.icons.star.path,
                            height: 15,
                            width: 15,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            cardData['rating'],
                            style: regular.copyWith(fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ]),
          Positioned(
            left: 10,
            top: 10,
            child: Container(
              height: 34,
              width: 34,
              decoration: BoxDecoration(
                borderRadius: kDefaultBorderRadius / 2,
                color: white,
                boxShadow: [
                  BoxShadow(
                    color: grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(1, 3),
                  ),
                ],
              ),
              child: Icon(
                Icons.favorite_outline_rounded,
                color: red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
