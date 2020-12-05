import 'package:animation_day_night/shared/constants.dart';
import 'package:flutter/material.dart';

import '../shared/size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(56.0),
      width: SizeConfig.screenWidth * .75,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: kTextColor),
        boxShadow: [kDefaultShadow],
      ),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          hintText: 'Search you destination?',
          fillColor: kTextColor,
          focusColor: kTextColor,
          suffixIcon: Icon(
            Icons.search,
            color: kIconColor,
          ),
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(kDefaultPadding),
            vertical: getProportionateScreenHeight(kDefaultPadding / 2),
          ),
        ),
      ),
    );
  }
}
