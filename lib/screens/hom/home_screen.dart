import 'package:animation_day_night/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/size_config.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true, //to allow items to go behind the app bar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/menu.svg',
            color: kIconColor,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: ClipOval(child: Image.asset('assets/images/profile.png')),
            onPressed: () {},
          ),
        ],
      ),
      body: Body(),
    );
  }
}
