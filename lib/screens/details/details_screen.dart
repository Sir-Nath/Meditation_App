import 'package:flutter/material.dart';
import 'package:meditation_app/Widgets/custom_nav_bar.dart';
import 'package:meditation_app/Widgets/search_bar.dart';
import 'package:meditation_app/constants.dart';

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
                    child: SearchBar(),),
                Wrap(
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white,
                          boxShadow: [BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor
                          )
                          ]
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 42,
                            width: 43,
                            decoration: BoxDecoration(
                              color: kBlueColor,
                              shape: BoxShape.circle
                            ),
                            child: Icon(Icons.play_arrow,
                            color: Colors.white,),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
