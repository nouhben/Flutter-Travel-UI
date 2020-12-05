import 'package:animation_day_night/models/user.dart';
import 'package:animation_day_night/shared/constants.dart';
import 'package:flutter/material.dart';

import '../../../shared/size_config.dart';

class Travelers extends StatelessWidget {
  const Travelers({
    Key key,
    @required this.travelers,
  }) : super(key: key);
  final List<User> travelers;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(30),
      child: Stack(
        children: [
          ...List.generate(
            travelers.length,
            (index) => Positioned(
              left: (22 * index).toDouble(),
              child: ClipOval(
                child: Image.asset(
                  travelers[index].image,
                  fit: BoxFit.cover,
                  width: getProportionateScreenWidth(28),
                  height: getProportionateScreenWidth(28),
                ),
              ),
            ),
          ),
          Positioned(
            left: (22 * travelers.length).toDouble(),
            child: SizedBox(
              height: getProportionateScreenWidth(28),
              width: getProportionateScreenWidth(28),
              child: FlatButton(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: kPrimaryColor,
                onPressed: () {
                  print('add traveler: ${travelers[0].name}');
                },
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
