import 'package:flutter/material.dart';
import 'package:navpages/navpages.dart';

import 'home.dart';
import 'demo.dart';
import 'counter.dart';
import 'example_button.dart';
import 'plain.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final key = GlobalKey();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        body: NavPages(
          key: key,
          expandable: true,
          navrailVerticleScrolling: true,
          useFullHeader: true,
          header: Container(
            decoration: BoxDecoration(
              color: Color.lerp(
                Theme.of(context).colorScheme.primary,
                Colors.black,
                0.66,
              ),
            ),
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.navigation_rounded, size: 60, color: Colors.white),
                Text(
                  'NavPages Demo',
                  style: Theme.of(
                    context,
                  ).textTheme.displaySmall?.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          footer: Container(
            decoration: BoxDecoration(
              color: Color.lerp(
                Theme.of(context).colorScheme.primary,
                Colors.black,
                0.66,
              ),
            ),
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.navigation_rounded, size: 60, color: Colors.white),
                Text(
                  'NavPages Demo',
                  style: Theme.of(
                    context,
                  ).textTheme.displaySmall?.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          useFullFooter: true,
          buttons: [
            NavRailButton(label: 'Home', icon: Icons.home),
            NavRailButton(label: 'Demo', icon: Icons.code),
            NavRailButton(label: 'Counter', icon: Icons.coffee),
            NavRailButton(label: 'Plain Widget', icon: Icons.contact_emergency),
            NavRailButton(label: 'Home', icon: Icons.ac_unit),
            NavRailButton(label: 'Demo', icon: Icons.account_balance),
            NavRailButton(label: 'Counter', icon: Icons.access_alarm),
            NavRailButton(label: 'Counter', icon: Icons.access_time),
            ExampleButton(label: 'Custom Btn', icon: Icons.work),
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
            Plain(),
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
              navbar: Navbar(title: 'Example'),
              child: Counter(title: 'Example'),
            ),
          ],
        ),
      ),
    );
  }
}
