import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavItems(
            text: 'Today',
            iconSrc: 'assets/icons/calendar.svg',
            press: () {},
          ),
          BottomNavItems(
              text: 'Exercise',
              iconSrc: 'assets/icons/gym.svg',
              press: () {},
              isActive: true),
          BottomNavItems(
              text: 'Settings',
              iconSrc: 'assets/icons/Settings.svg',
              press: () {}),
        ],
      ),
    );
  }
}

class BottomNavItems extends StatelessWidget {
  final String text;
  final String iconSrc;
  final VoidCallback press;
  final bool isActive;
  const BottomNavItems({
    Key? key,
    required this.text,
    required this.iconSrc,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            iconSrc,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            text,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          )
        ],
      ),
    );
  }
}