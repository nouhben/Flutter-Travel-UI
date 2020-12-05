import 'package:animation_day_night/models/travel_spot.dart';
import 'package:animation_day_night/screens/hom/components/travelers.dart';
import 'package:animation_day_night/shared/constants.dart';
import 'package:flutter/material.dart';

import '../shared/size_config.dart';

class TravelSpotCard extends StatelessWidget {
  const TravelSpotCard({
    Key key,
    @required this.travelSpot,
    this.onPress,
  }) : super(key: key);
  final TravelSpot travelSpot;
  final GestureTapCallback onPress;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(137.0),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.29,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(travelSpot.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(137.0),
            padding: EdgeInsets.symmetric(
              vertical: getProportionateScreenWidth(kDefaultPadding),
              horizontal: getProportionateScreenWidth(kDefaultPadding / 3.5),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              boxShadow: [
                kDefaultShadow,
                BoxShadow(
                  color: kPrimaryColor.withOpacity(0.26),
                  offset: Offset(1, 1),
                  spreadRadius: -1,
                  blurRadius: 50,
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  travelSpot.name,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                VerticalSpacing(of: 10),
                Travelers(travelers: travelSpot.users),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
