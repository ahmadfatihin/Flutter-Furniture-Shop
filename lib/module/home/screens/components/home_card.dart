import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_shop/const/colors.dart';
import 'package:furniture_shop/const/size.dart';
import 'package:furniture_shop/const/text.dart';
import 'package:furniture_shop/gen/assets.gen.dart';

import '../../../../helper/custom_snackbar.dart';
import '../../providers/favorite_provider.dart';

class HomeCard extends ConsumerWidget {
  final Map<String, dynamic> cardData;

  const HomeCard({Key? key, required this.cardData}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteState = ref.read(favoriteProvider);
    final favorite = ref.watch(favoriteProvider.notifier);
    final isFavorite = favorite.isFavorite(cardData['title']);
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
          Hero(
            tag: cardData['title'],
            child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
                child: Image.asset(
                  cardData['imagePath'],
                  width: 200,
                  height: 145,
                  fit: BoxFit.cover,
                )),
          ),
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
                            cardData['rating'].toString(),
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
            child: InkWell(
              onTap: () {
                ref
                    .read(favoriteProvider.notifier)
                    .toggleFavorite(cardData['title']);
                ref.refresh(favoriteProvider);
                showSnackBar(context, 'List Favorite: $favoriteState');
              },
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
                  favoriteState.contains(cardData['title'])
                      ? Icons.favorite
                      : Icons.favorite_outline_rounded,
                  color: red,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
