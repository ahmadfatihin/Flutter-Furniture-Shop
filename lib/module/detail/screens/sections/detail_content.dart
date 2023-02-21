// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:furniture_shop/const/colors.dart';
import 'package:furniture_shop/const/text.dart';
import 'package:furniture_shop/gen/assets.gen.dart';
import 'package:furniture_shop/module/detail/screens/components/select_color_component.dart';

import '../../../../const/size.dart';

class DetailContent extends StatelessWidget {
  final String title;
  final String price;
  final double rating;
  const DetailContent({
    Key? key,
    required this.title,
    required this.price,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var padding = const EdgeInsets.symmetric(horizontal: 24.0);
    //if rating > 5, stars icon will maxed to 5
    var maxYellowStar = 5;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: padding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: semiBold.copyWith(fontSize: 22),
                ),
                Text(
                  price,
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
                if (rating - rating.floor() > 0 &&
                    maxYellowStar > rating.floor())
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
              child: Column(
                children: [
                  SelectColor(),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [Text("Select Quantity :")],
                  )
                ],
              )),
          SizedBox(
            height: 30,
          ),
          Padding(
              padding: padding,
              child: Text(
                  "Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper."))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 14, bottom: 32),
            child: Container(
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                color: grey,
                borderRadius: kDefaultBorderRadius,
              ),
              child: Center(
                  child: Text(
                "ADD TO CART",
                style: bold.copyWith(color: white),
              )),
            ),
          )
        ],
      ),
    );
  }
}
