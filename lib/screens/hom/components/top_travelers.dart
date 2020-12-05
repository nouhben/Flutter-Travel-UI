import 'package:animation_day_night/components/section_title.dart';
import 'package:animation_day_night/components/traveler_card.dart';
import 'package:animation_day_night/models/user.dart';
import 'package:animation_day_night/shared/constants.dart';
import 'package:flutter/material.dart';

import '../../../shared/size_config.dart';

class TopTravelers extends StatelessWidget {
  const TopTravelers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: 'Top Travelers on Spark', onPress: () {}),
        VerticalSpacing(of: 10),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(kDefaultPadding),
          ),
          padding: EdgeInsets.all(
            getProportionateScreenWidth(getProportionateScreenWidth(24)),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              kDefaultShadow,
              BoxShadow(
                color: kPrimaryColor.withOpacity(0.21),
                blurRadius: 20,
              ),
            ],
          ),
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                topTravelers.length,
                (index) => TravelerCard(traveler: topTravelers[index]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
