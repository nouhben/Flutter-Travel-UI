import 'package:animation_day_night/models/travel_spot.dart';
import 'package:animation_day_night/screens/hom/components/travelers.dart';
import 'package:animation_day_night/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../shared/size_config.dart';

class TravelSpotCard extends StatelessWidget {
  const TravelSpotCard({
    Key key,
    @required this.travelSpot,
    @required this.onPress,
    @required this.isFullCard,
  }) : super(key: key);
  final TravelSpot travelSpot;
  final GestureTapCallback onPress;
  final bool isFullCard;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(isFullCard ? 158.0 : 147.0),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: isFullCard ? 1.09 : 1.29,
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
            width: getProportionateScreenWidth(isFullCard ? 168.0 : 147.0),
            padding: EdgeInsets.all(
              getProportionateScreenWidth(kDefaultPadding / 2),
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
                  blurRadius: 15,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  travelSpot.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isFullCard ? 16 : 12,
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor,
                  ),
                ),
                VerticalSpacing(of: 5),
                if (isFullCard)
                  Text(
                    travelSpot.date.day.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                if (isFullCard)
                  Text(
                    DateFormat.MMMM().format(travelSpot.date).toString() +
                        ' ' +
                        travelSpot.date.year.toString(),
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
