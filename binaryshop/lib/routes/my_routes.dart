import 'package:binaryshop/pages/paginaprincipal.dart';
import 'package:get/route_manager.dart';
import 'package:binaryshop/pages/sign_in_screen.dart';
import 'package:binaryshop/pages/homPage.dart';

routes() => [
      GetPage(name: "/home", page: () => SignInScreen()),
      GetPage(
          name: "/catalogo",
          page: () => HomePage(),
          transition: Transition.zoom),
    ];
