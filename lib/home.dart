import 'package:flutter/material.dart';

import 'package:navpages/navpages.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Navbar(title: 'Home'),
        Expanded(child: Center(child: Text('Home'))),
      ],
    );
  }
}
