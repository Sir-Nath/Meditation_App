import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/Widgets/custom_nav_bar.dart';
import 'package:meditation_app/Widgets/search_bar.dart';
import 'package:meditation_app/constants.dart';

import '../../Widgets/meditation_card.dart';
import '../../Widgets/session_card.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: CustomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage('assets/images/meditation_bg.png'),
                  fit: BoxFit.fitWidth),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Text('Meditation',
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontWeight: FontWeight.w900)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '3-10 Mins Course',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: size.width * 0.5,
                    child: Text(
                        'Live happier and healthier by learning the fundamentals of meditation and mindfulness'),
                  ),
                  SizedBox(
                    width: size.width * 0.6,
                    child: SearchBar(),
                  ),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      SessionCard(
                        sessionNum: 01,
                        isDone: true,
                        press: () {},
                      ),
                      SessionCard(sessionNum: 02, isDone: true, press: () {}),
                      SessionCard(sessionNum: 03, isDone: true, press: () {}),
                      SessionCard(sessionNum: 04, isDone: true, press: () {}),
                      SessionCard(sessionNum: 05, isDone: true, press: () {}),
                      SessionCard(sessionNum: 06, isDone: true, press: () {}),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Meditation',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      MeditationCard()
                    ],
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}




