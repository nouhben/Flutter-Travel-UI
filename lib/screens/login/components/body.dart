import 'package:animation_day_night/screens/login/components/land.dart';
import 'package:animation_day_night/screens/login/components/tabs.dart';
import 'package:animation_day_night/shared/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'rounded_text_field.dart';

enum Mood { DAY, NIGHT }

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _isFullSun = false;
  Mood _mood = Mood.DAY;
  @override
  void initState() {
    super.initState();
    // starting sun is on the ground _isFullSun = false after 1 sec we change it to true
    Future.delayed(Duration(seconds: 1)).then((value) {
      setState(() {
        _isFullSun = true;
      });
    });
  }

  void _toggleMood(int value) {
    if (value == Mood.DAY.index) {
      setState(() => _mood = Mood.DAY);
      Future.delayed(
        Duration(microseconds: 300),
      ).then(
        (value) => setState(() => _isFullSun = true),
      );
    } else {
      setState(() => _mood = Mood.NIGHT);
      Future.delayed(
        Duration(microseconds: 300),
      ).then(
        (value) => setState(() => _isFullSun = false),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Color> lightBgColors = [
      Color(0xff8C2480),
      Color(0xffCE587D),
      Color(0xffFF9485),
      //Also add more light when the sun is full on background
      if (_isFullSun) Color(0xffFF9D80)
    ];
    var darkBgColors = [
      Color(0xFF0D1441),
      Color(0xFF283584),
      Color(0xFF376AB2),
    ];

    Duration _duration = Duration(seconds: 1);
    return AnimatedContainer(
      // We want the background to get lighter slowly also as the sun raises
      duration: _duration,
      width: double.infinity,
      height: SizeConfig.screenHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: _mood == Mood.DAY ? lightBgColors : darkBgColors,
        ),
      ),
      child: Stack(
        children: [
          //We Want to raise sun from the ground
          AnimatedPositioned(
            duration: _duration,
            left: getProportionateScreenWidth(30),
            curve: Curves.easeInOut,
            bottom: getProportionateScreenWidth(_isFullSun ? -45 : -150),
            child: SvgPicture.asset('assets/icons/Sun.svg'),
          ),
          Land(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VerticalSpacing(of: 50),
                  Tabs(
                    press: (value) {
                      _toggleMood(value);
                    },
                  ),
                  VerticalSpacing(),
                  Text(
                    'Good Morning',
                    style: Theme.of(context).textTheme.headline3.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  VerticalSpacing(of: 10),
                  Text(
                    "Enter your Informations below",
                    style: TextStyle(color: Colors.white),
                  ),
                  VerticalSpacing(of: 50),
                  RoundedTextField(
                    initialValue: "ahmed.aymen@email.com",
                    hintText: "Email",
                  ),
                  VerticalSpacing(),
                  RoundedTextField(
                    initialValue: "XXXXXXXX",
                    hintText: "Password",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
