import 'package:flutter/material.dart';

import 'feature/auth/screens/auth_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    // case '/auth_screen'
    ///A better way is to specify a static variable say, 'routeName' in the AuthScreen class so we can just call
    ///AuthScreen.routeName . This reduces the chances of having errors
    case AuthScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, //this is not necessary though
          builder: (_) => const AuthScreen());
    //the (_) indicates that whatever context it will give to us is not needed or necessary
    default:
      return MaterialPageRoute(
          builder: (_) => const Scaffold(
                  body: Center(
                child: Text('Screen does not exist'),
              )));
  }
}
