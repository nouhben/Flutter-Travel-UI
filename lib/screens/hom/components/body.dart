import 'package:flutter/material.dart';
import '../../../shared/size_config.dart';
import 'home_header.dart';
import 'popular_places.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          HomeHeader(),
          VerticalSpacing(),
          PopularPlaces(),
        ],
      ),
    );
  }
}
