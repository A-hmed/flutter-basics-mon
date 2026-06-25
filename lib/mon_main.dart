import 'package:flutter/material.dart';
import 'package:flutter_basics_c19/mon_thurs/screens/calculator/m_calculator_screen.dart';
import 'package:flutter_basics_c19/mon_thurs/screens/home/home_screen.dart';
import 'package:flutter_basics_c19/mon_thurs/screens/login/login_screen.dart';
import 'package:flutter_basics_c19/mon_thurs/screens/register/register_screen.dart';
import 'package:flutter_basics_c19/mon_thurs/screens/xo/pick_player_screen.dart';
import 'package:flutter_basics_c19/mon_thurs/screens/xo/xo_screen.dart';

Color blue = Color(0xff024383);

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: PickPlayerScreen.routeName,
      routes: {
        LoginScreen.routeName: (_) => LoginScreen(),
        "home": (_) => HomeScreen(),
        "register": (_) => RegisterScreen(),
        MCalculatorScreen.routeName: (_) => MCalculatorScreen(),
        XoScreen.routeName: (_) => XoScreen(),
        PickPlayerScreen.routeName: (_) => PickPlayerScreen()
      },
    );
  }
}
/// Git commands:
/// init: Create empty repository (with master branch)
/// commit: Save changes in project
/// reset: Move branch to other commit
/// revert: New commit with reverted changes
/// merge: Move commits from branch to another
/// checkout: Changes view of the current branch
/// push: Upload current branch to remote repo
/// pull: Download changes from remote repo to your local repo

