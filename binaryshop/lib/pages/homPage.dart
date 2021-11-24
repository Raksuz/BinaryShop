import 'package:binaryshop/pages/repository/firebase_auth_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'home_trips.dart';
import 'package:binaryshop/pages/search.dart';
import 'profile_trips.dart';

class HomePage extends StatelessWidget {
  final controller = Get.put(FirebaseAuthAPI());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.indigo), title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.indigo), title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.indigo), title: Text("")),
        ]),

        // ignore: missing_return
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => ProfileTrips(),
              );
              break;
          }
          throw '';
        },
      ),
    );
  }
}
