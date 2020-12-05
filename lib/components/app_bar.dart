import 'package:animation_day_night/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar buildAppBar({bool isTransparent = false, String title}) {
  return AppBar(
    backgroundColor: isTransparent ? Colors.transparent : Colors.white,
    elevation: 0.0,
    leading: IconButton(
      icon: SvgPicture.asset(
        'assets/icons/menu.svg',
        color: kIconColor,
      ),
      onPressed: () {},
    ),
    title: title != null
        ? Text(
            title,
            style: TextStyle(color: kPrimaryColor),
          )
        : null,
    centerTitle: true,
    actions: [
      IconButton(
        icon: ClipOval(child: Image.asset('assets/images/profile.png')),
        onPressed: () {},
      ),
    ],
  );
}
