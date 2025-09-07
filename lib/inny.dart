import 'package:flutter/material.dart';

import 'package:navpages/navpages.dart';

class Inny extends StatelessWidget {
  const Inny({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Navbar(title: 'Inny'),
        Expanded(child: Center(child: Text('Inny'))),
      ],
    );
  }
}
