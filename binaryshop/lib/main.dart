import 'package:binaryshop/pages/paginaprincipal.dart';
import 'package:binaryshop/pages/sign_in_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Binary Shop',
    debugShowCheckedModeBanner: false,
    //home: PaginaPrincipal(),
    home: SignInScreen(),
  ));
}
