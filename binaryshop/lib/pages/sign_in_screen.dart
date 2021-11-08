import 'package:flutter/material.dart';
import 'package:binaryshop/pages/gradient_black.dart';

class SignInScreen extends StatefulWidget {
  @override
  State createState() {
    // TODO: implement createState
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return singInGoogleUI();
  }

  Widget singInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack("", 880),
          Column(
            children: [
              Text(
                "Bienvenido \n Esta es la app BinaryShop",
                style: TextStyle(
                    fontSize: 37.0,
                    fontFamily: "Lato",
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
