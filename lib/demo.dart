import 'package:flutter/material.dart';

import 'inner.dart';
import 'package:navpages/navpages.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Navbar(title: 'Demo'),
        Expanded(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              spacing: 16,
              children: [
                Text('Demo'),
                FilledButton(
                  onPressed: () {
                    final navPages = NavPages.of(context);
                    navPages.setDirection(
                      navPages.direction == NavPagesDirection.horizontal
                          ? NavPagesDirection.vertical
                          : NavPagesDirection.horizontal,
                    );
                  },
                  child: Text('Toggle Direction'),
                ),
                FilledButton(
                  onPressed: () {
                    NavPages.of(context).toggleFullscreen();
                  },
                  child: Text('Toggle Fullscreen'),
                ),
                FilledButton(
                  onPressed: () {
                    NavPages.of(context).push(Inner());
                  },
                  child: Text('Push Inner'),
                ),
                FilledButton(
                  onPressed: () {
                    NavPages.of(context).push(Inner(), fullscreen: true);
                  },
                  child: Text('Push Inner Full Screen'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
