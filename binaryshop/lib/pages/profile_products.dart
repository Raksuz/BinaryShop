import 'package:flutter/material.dart';
import 'package:binaryshop/pages/profile_header.dart';
import 'profile_background.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ProfileBackground(),
        ListView(
          children: <Widget>[
            ProfileHeader(),
          ],
        ),
      ],
    );
  }
}
