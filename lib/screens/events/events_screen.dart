import 'package:animation_day_night/components/app_bar.dart';
import 'package:animation_day_night/screens/hom/home_screen.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class EventsScreen extends StatelessWidget {
  static final String routeName = '/events';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'New Events'),
      bottomNavigationBar: CustomBottomNavigationBar(
        whichRout: EventsScreen.routeName,
      ),
      body: Body(),
    );
  }
}
