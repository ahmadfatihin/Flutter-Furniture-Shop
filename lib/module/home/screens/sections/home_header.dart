import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:furniture_shop/const/colors.dart';

import '../../../../const/text.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

int _selectedIndex = 0;

final List<String> _menuItems = [
  'All',
  'Living Room',
  'Bedroom',
  'Dining Room',
  'Kitchen Room',
  'Office Room',
];

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            'Discover the most \nmodern furniture',
            style: medium.copyWith(fontSize: 22),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(
                  _menuItems.length,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                          child: Container(
                              width: 90,
                              height: 33,
                              decoration: BoxDecoration(
                                color: _selectedIndex == index
                                    ? grey
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Center(
                                  child: Text(
                                _menuItems[index],
                                style: medium.copyWith(
                                    fontSize: 12,
                                    color: _selectedIndex == index
                                        ? whiteBackground
                                        : black),
                                textAlign: TextAlign.center,
                              ))),
                        ),
                      ))),
        )
      ],
    );
  }
}
