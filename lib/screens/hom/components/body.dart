import 'package:flutter/material.dart';

import '../../../shared/size_config.dart';
import '../../../shared/size_config.dart';
import '../../../shared/size_config.dart';
import '../../../shared/size_config.dart';
import '../../../shared/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          overflow: Overflow
              .visible, //So when the container down is -15px down i can still see it
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/images/home_bg.png',
              height: getProportionateScreenWidth(315),
              fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VerticalSpacing(of: 80),
                Text(
                  'Travelers',
                  style: Theme.of(context).textTheme.headline2.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 0.5,
                      ),
                ),
                Text(
                  'Travel Community App',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            Positioned(
              bottom: getProportionateScreenWidth(-15),
              child: Container(
                height: getProportionateScreenWidth(50),
                width: SizeConfig.screenWidth * .75,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
