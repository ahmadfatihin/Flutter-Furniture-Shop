import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:furniture_shop/const/text.dart';
import 'package:furniture_shop/module/home/screens/components/home_card.dart';

import '../../../../gen/assets.gen.dart';

class HomeRecommended extends StatelessWidget {
  const HomeRecommended({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> homeCardData = [
      {
        "imagePath": Assets.images.furniture1.path,
        "title": "Stylish Chair",
        "price": "\$170",
        "rating": "4.7",
      },
      {
        "imagePath": Assets.images.furniture2.path,
        "title": "Modern Sofa",
        "price": "\$350",
        "rating": "4.9",
      },
      {
        "imagePath": Assets.images.furniture3.path,
        "title": "Retro Armchair",
        "price": "\$280",
        "rating": "4.5",
      },
      {
        "imagePath": Assets.images.furniture4.path,
        "title": "Vintage Cabinet",
        "price": "\$450",
        "rating": "4.8",
      },
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            'Recommended Furnitures',
            style: medium.copyWith(fontSize: 16),
          ),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 1.75),
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            padding: EdgeInsets.all(20),
            children: homeCardData.map((cardData) {
              return HomeCard(
                cardData: cardData,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
