import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class MeditationCard extends StatelessWidget {
  const MeditationCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.all(10),
      height: 90,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 17),
                spreadRadius: -13,
                blurRadius: 23,
                color: kShadowColor
            ),
          ]
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/Meditation_women_small.svg'),
          SizedBox(width: 20,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Basic 2',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Text('Start to deepen you practice ')
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: SvgPicture.asset('assets/icons/Lock.svg'),
          )
        ],
      ),
    );
  }
}