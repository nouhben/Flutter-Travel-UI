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
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    Key key,
  }) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

enum NavigationItems { CHAT, CALENDAR, FRIENDSHIP }

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _activeItem = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: kPrimaryColor,
      unselectedItemColor: kPrimaryColor.withOpacity(.30),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      currentIndex: _activeItem,
      onTap: (value) {
        setState(() {
          _activeItem = value;
        });
      },
      items: [
        BottomNavigationBarItem(
          label: 'Calendar',
          icon: SvgPicture.asset(
            'assets/icons/calendar.svg',
            width: 28,
            height: 28,
            color: _activeItem == 0
                ? kPrimaryColor
                : kPrimaryColor.withOpacity(0.2),
          ),
        ),
        BottomNavigationBarItem(
          label: 'Chat',
          icon: SvgPicture.asset(
            'assets/icons/chat.svg',
            width: 28,
            height: 28,
            color: _activeItem == 1
                ? kPrimaryColor
                : kPrimaryColor.withOpacity(0.2),
          ),
        ),
        BottomNavigationBarItem(
          label: 'Friendship',
          icon: SvgPicture.asset(
            'assets/icons/friendship.svg',
            width: 28,
            height: 28,
            color: _activeItem == 2
                ? kPrimaryColor
                : kPrimaryColor.withOpacity(0.2),
          ),
        ),
      ],
    );
  }
}
