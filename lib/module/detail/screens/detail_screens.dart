// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:furniture_shop/module/detail/screens/sections/detail_content.dart';

import '../../../const/colors.dart';
import '../../../const/size.dart';
import 'components/detail_flexible_space.dart';

class DetailScreen extends StatelessWidget {
  final Map<String, dynamic> cardData;
  const DetailScreen({
    Key? key,
    required this.cardData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool inner) {
              return [
                SliverAppBar(
                  pinned: true,
                  backgroundColor: whiteBackground,
                  expandedHeight: MediaQuery.of(context).size.height * 0.5,
                  leading: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: white.withOpacity(0.3),
                          border: Border.all(
                              color: grey.withOpacity(0.4), width: 1),
                          borderRadius: BorderRadius.circular(12)),
                      child: InkWell(
                        onTap: () => context.router.pop(),
                        borderRadius: BorderRadius.circular(12),
                        child: Icon(
                          Icons.keyboard_arrow_left,
                          color: black,
                        ),
                      ),
                    ),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
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
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.share,
                        color: black,
                      ),
                    ],
                  ),
                  flexibleSpace: DetailFlexibleSpace(
                    title: cardData["title"],
                    imagePath: cardData["imagePath"],
                  ),
                )
              ];
            },
            body: DetailContent(
              title: cardData["title"],
              price: cardData["price"],
              rating: cardData["rating"],
            )));
  }
}
