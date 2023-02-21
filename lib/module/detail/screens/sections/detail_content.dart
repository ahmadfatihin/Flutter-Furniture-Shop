import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:furniture_shop/const/colors.dart';
import 'package:furniture_shop/const/text.dart';
import 'package:furniture_shop/gen/assets.gen.dart';

class DetailContent extends StatelessWidget {
  const DetailContent({super.key});

  @override
  Widget build(BuildContext context) {
    var rating = 4.1;
    var padding = const EdgeInsets.symmetric(horizontal: 24.0);
    //if rating > 5, stars icon will maxed to 5
    var maxYellowStar = 5;
    return Column(
      children: [
        Padding(
          padding: padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Wooden",
                style: semiBold.copyWith(fontSize: 22),
              ),
              Text(
                '240',
                style: medium.copyWith(fontSize: 23, color: grey),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0, top: 5, bottom: 20),
          child: Row(
            children: [
              // yellow star icons for whole numbers of rating
              for (int i = 0; i < rating.floor() && i < maxYellowStar; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Icon(Icons.star, color: yellow),
                ),

              // grey star icon for partial rating
              if (rating - rating.floor() > 0 && maxYellowStar > rating.floor())
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Icon(Icons.star_half, color: yellow),
                ),

              // grey star icons for remaining empty stars
              for (int i = 0; i < 5 - rating.ceil(); i++)
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Icon(Icons.star_border, color: grey),
                ),
            ],
          ),
        ),
        Padding(
          padding: padding,
          child: Column(children: [
            Row(
              children: [Text("Choose a color :")],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [Text("Select Quantity :")],
            )
          ]),
        )
      ],
    );
  }
}
