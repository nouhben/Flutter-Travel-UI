import 'package:animation_day_night/components/travel_spot_card.dart';
import 'package:animation_day_night/models/travel_spot.dart';
import 'package:animation_day_night/shared/constants.dart';
import 'package:flutter/material.dart';

import '../../../shared/size_config.dart';
import '../../../shared/size_config.dart';
import '../../../shared/size_config.dart';
import '../../../shared/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(kDefaultPadding),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 20,
            children: [
              ...List.generate(
                travelSpots.length,
                (index) => TravelSpotCard(
                  isFullCard: true,
                  travelSpot: travelSpots[index],
                  onPress: () {},
                ),
              ),
              Container(
                width: getProportionateScreenWidth(168),
                height: getProportionateScreenWidth(350),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(.2),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 2,
                    color: kPrimaryColor.withOpacity(0.1),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 53,
                      height: 53,
                      child: FlatButton(
                        padding: EdgeInsets.zero,
                        color: kPrimaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                        onPressed: () {},
                        child: Icon(
                          Icons.add,
                          size: 38,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    VerticalSpacing(of: 10),
                    Text('Add New Place'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/**
 * 
 * 
        SizedBox(
          width: getProportionateScreenWidth(180.0),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.29,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(travelSpots[0].image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
              ),
              Container(
                width: getProportionateScreenWidth(180.0),
                padding: EdgeInsets.symmetric(
                  vertical: getProportionateScreenWidth(kDefaultPadding),
                  horizontal: getProportionateScreenWidth(kDefaultPadding / 2),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      travelSpots[0].name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    VerticalSpacing(of: 10),
                    Text(
                      travelSpots[0].date.day.toString(),
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                    VerticalSpacing(of: 5),
                    Text(_getDate(dateTime: travelSpots[0].date)),
                    VerticalSpacing(of: 5),
                    Travelers(travelers: travelSpots[0].users),
                  ],
                ),
              ),
            ],
          ),
        ),
      
 * 
 */
