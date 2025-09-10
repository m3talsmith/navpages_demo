import 'package:flutter/material.dart';
import 'package:navpages/navpages.dart';

import 'home.dart';
import 'demo.dart';
import 'counter.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        body: NavPages(
          expandable: true,
          buttons: [
            NavRailButton(label: 'Home', icon: Icons.home),
            NavRailButton(label: 'Demo', icon: Icons.code),
            NavRailButton(label: 'Counter', icon: Icons.coffee),
            NavRailButton(label: 'Counter', icon: Icons.contact_emergency),
            NavRailButton(label: 'Home', icon: Icons.ac_unit),
            NavRailButton(label: 'Demo', icon: Icons.account_balance),
            NavRailButton(label: 'Counter', icon: Icons.access_alarm),
            NavRailButton(label: 'Counter', icon: Icons.access_time),
          ],
          actions: [
            NavRailButton(label: 'Settings', icon: Icons.settings),
            NavRailButton(label: 'Help', icon: Icons.help),
          ],
          children: [
            NavPage(
              navbar: Navbar(title: 'Home'),
              child: Home(),
            ),
            NavPage(
              navbar: Navbar(title: 'Demo'),
              child: Demo(),
            ),
            NavPage(
              navbar: Navbar(title: 'Counter'),
              child: Counter(title: 'Counter'),
            ),
            NavPage(
              navbar: Navbar(title: 'Counter'),
              child: Counter(title: 'Counter'),
            ),
            NavPage(
              navbar: Navbar(title: 'Home'),
              child: Home(),
            ),
            NavPage(
              navbar: Navbar(title: 'Demo'),
              child: Demo(),
            ),
            NavPage(
              navbar: Navbar(title: 'Counter'),
              child: Counter(title: 'Counter'),
            ),
            NavPage(
              navbar: Navbar(title: 'Counter'),
              child: Counter(title: 'Counter'),
            ),
          ],
        ),
      ),
    );
  }
}
