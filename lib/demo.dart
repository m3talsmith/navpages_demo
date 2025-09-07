import 'package:flutter/material.dart';

import 'inner.dart';
import 'package:navpages/navpages.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Navbar(title: 'Demo'),
        Expanded(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Demo'),
                ElevatedButton(
                  onPressed: () {
                    NavPages.of(context).push(Inner());
                  },
                  child: Text('Push Inner'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
