import 'package:binaryshop/pages/repository/firebase_auth_api.dart';
import 'package:flutter/material.dart';
import 'package:binaryshop/pages/gradient_black.dart';
import 'package:binaryshop/pages/button_green.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:binaryshop/pages/paginaprincipal.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  final controller = Get.put(FirebaseAuthAPI());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<FirebaseAuthAPI>(
        init: FirebaseAuthAPI(),
        builder: (_) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Bienvenido \n a BinaryShop",
                      style: TextStyle(
                          fontSize: 37.0,
                          fontFamily: "Lato",
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    ButtonGreen(
                      text: "Inicia Sesion con Gmail",
                      onPressed: () async {
                        _.signInWithGoogle();
                      },
                      width: 300.0,
                      height: 50.0,
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
