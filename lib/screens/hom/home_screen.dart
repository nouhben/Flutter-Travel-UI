import 'package:animation_day_night/components/app_bar.dart';
import 'package:animation_day_night/screens/events/events_screen.dart';
import 'package:animation_day_night/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/size_config.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true, //to allow items to go behind the app bar
      appBar: buildAppBar(isTransparent: true),
      body: Body(),
      bottomNavigationBar: CustomBottomNavigationBar(
        whichRout: HomeScreen.routeName,
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  final String whichRout;
  const CustomBottomNavigationBar({
    Key key,
    this.whichRout,
  }) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

enum NavigationItems { EVENTS, CHAT, FRIENDSHIP }

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _activeItem = 0;
  @override
  void initState() {
    super.initState();
    if (widget.whichRout == EventsScreen.routeName) {
      _activeItem = 0;
    } else {
      _activeItem = 1;
    }
  }

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
        if (value == NavigationItems.EVENTS.index &&
            EventsScreen.routeName != widget.whichRout) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => EventsScreen(),
            ),
          );
        }
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
