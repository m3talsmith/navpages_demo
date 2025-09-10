import 'package:flutter/material.dart';

import 'package:navpages/navpages.dart';

class Inner extends StatefulWidget {
  const Inner({super.key});

  @override
  State<Inner> createState() => _InnerState();
}

class _InnerState extends State<Inner> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      NavPages.of(context).setSecondaryActions([
        NavRailButton(label: 'Increment', icon: Icons.add),
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return NavPage(
      navbar: Navbar(title: 'Inner'),
      child: Center(child: Text('Inner')),
    );
  }
}
