import 'package:flutter/material.dart';

import 'package:navpages/navpages.dart';

class Inner extends StatelessWidget {
  const Inner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Navbar(title: 'Inner'),
        Expanded(child: Center(child: Text('Inner'))),
      ],
    );
  }
}
