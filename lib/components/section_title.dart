import 'package:animation_day_night/shared/constants.dart';
import 'package:flutter/material.dart';

import '../shared/size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    @required this.title,
    @required this.onPress,
  }) : super(key: key);
  final String title;
  final GestureTapCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(kDefaultPadding),
      ),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            this.title ?? 'Right Now at Algeirs',
            style: Theme.of(context).textTheme.headline4.copyWith(
                  color: kTextColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Spacer(),
          FlatButton(
            onPressed: this.onPress ?? null,
            child: Text(
              'See all',
              style: TextStyle(color: Colors.black45),
            ),
          ),
        ],
      ),
    );
  }
}
