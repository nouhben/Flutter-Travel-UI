import 'package:animation_day_night/components/travel_spot_card.dart';
import 'package:animation_day_night/models/travel_spot.dart';
import 'package:flutter/material.dart';

import '../../../shared/size_config.dart';
import '../../../components/section_title.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'Hot spots now',
          onPress: () {
            print('See all pressed!');
          },
        ),
        VerticalSpacing(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          child: Row(
            children: [
              ...List.generate(
                travelSpots.length,
                (index) => Padding(
                  padding: EdgeInsets.only(
                    left: getProportionateScreenWidth(20),
                  ),
                  child: TravelSpotCard(
                    isFullCard: false,
                    travelSpot: travelSpots[index],
                    onPress: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
