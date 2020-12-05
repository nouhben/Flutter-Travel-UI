import 'package:animation_day_night/components/app_bar.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'New Events'),
      body: Body(),
    );
  }
}
