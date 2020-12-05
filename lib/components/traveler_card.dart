import 'package:animation_day_night/models/user.dart';
import 'package:flutter/material.dart';

import '../shared/size_config.dart';

class TravelerCard extends StatelessWidget {
  const TravelerCard({
    @required this.traveler,
    Key key,
  }) : super(key: key);
  final User traveler;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            traveler.image,
            width: getProportionateScreenWidth(54),
            height: getProportionateScreenWidth(54),
            fit: BoxFit.cover,
          ),
        ),
        VerticalSpacing(of: 5),
        Text(
          traveler.name,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
