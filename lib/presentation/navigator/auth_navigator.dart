import 'package:flutter/material.dart';

import '../../utils/navigator_support.dart';
import '../pages/login/login_page.dart';

class AuthNavigator extends StatefulWidget {
  static const path = '/auth_navigator';

  const AuthNavigator({Key? key}) : super(key: key);

  @override
  State<AuthNavigator> createState() => _AuthNavigatorState();
}

class _AuthNavigatorState extends State<AuthNavigator> {
  @override
  Widget build(BuildContext context) {
    return NavigatorSupport(
      initialRoute: LoginPage.path,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case LoginPage.path:
            return MaterialPageRoute(builder: (context) => const LoginPage());
          default:
            return MaterialPageRoute(builder: (context) => Container());
        }
      },
    );
  }
}
