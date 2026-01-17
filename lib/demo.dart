import 'package:flutter/material.dart';

import 'inner.dart';
import 'package:navpages/navpages.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      margin: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: NavPages(
        expanded: true,
        direction: NavPagesDirection.horizontal,
        buttons: [
          NavRailButton(label: 'Positional', icon: Icons.layers_rounded),
          NavRailButton(
            label: 'Contextual',
            icon: Icons.display_settings_rounded,
          ),
          NavRailButton(label: 'Navigational', icon: Icons.navigation_rounded),
        ],
        children: [
          GridView.count(
            crossAxisCount: size.width ~/ 300,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            padding: EdgeInsets.all(8),
            shrinkWrap: true,
            childAspectRatio: 3,
            children: [
              FilledButton(
                onPressed: () {
                  final navpages = NavPages.of(context);
                  final direction = navpages.direction;
                  navpages.setDirection(
                    direction == NavPagesDirection.horizontal
                        ? NavPagesDirection.vertical
                        : NavPagesDirection.horizontal,
                  );
                },
                child: Text('Toggle Display Direction'),
              ),
              FilledButton(
                onPressed: () {
                  NavPages.of(context).toggleFullscreen();
                },
                child: Text('Toggle Fullscreen'),
              ),
              FilledButton(
                onPressed: () {
                  NavPages.of(context).setPosition(NavPagesRailPosition.left);
                },
                child: Text('Move Rail Left'),
              ),
              FilledButton(
                onPressed: () {
                  NavPages.of(context).setPosition(NavPagesRailPosition.right);
                },
                child: Text('Move Rail Right'),
              ),
              FilledButton(
                onPressed: () {
                  NavPages.of(context).setPosition(NavPagesRailPosition.top);
                },
                child: Text('Move Rail Up'),
              ),
              FilledButton(
                onPressed: () {
                  NavPages.of(context).setPosition(NavPagesRailPosition.bottom);
                },
                child: Text('Move Rail Down'),
              ),
              FilledButton(
                onPressed: () {
                  NavPages.of(context).showFullscreenDialog(FullscreenDialog());
                },
                child: Text('Show Fullscreen Dialog'),
              ),
              FilledButton(
                onPressed: () {
                  NavPages.of(context).showDialog(Dialog());
                },
                child: Text('Show Dialog'),
              ),
            ],
          ),
          GridView.count(
            crossAxisCount: size.width ~/ 300,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            padding: EdgeInsets.all(8),
            shrinkWrap: true,
            childAspectRatio: 3,
            children: [
              FilledButton(
                onPressed: () {
                  NavPages.of(context).toggleHeaderFullscreen();
                },
                child: Text('Toggle Full Header'),
              ),
              FilledButton(
                onPressed: () {
                  NavPages.of(context).toggleFooterFullscreen();
                },
                child: Text('Toggle Full Footer'),
              ),
            ],
          ),
          GridView.count(
            crossAxisCount: size.width ~/ 300,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            padding: EdgeInsets.all(8),
            shrinkWrap: true,
            childAspectRatio: 3,
            children: [
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
                child: Text('Push Inner Fullscreen'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FullscreenDialog extends StatelessWidget {
  const FullscreenDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: FilledButton(
          onPressed: () {
            NavPages.of(context).hideFullscreenDialog();
          },
          child: Text('Close Fullscreen Dialog'),
        ),
      ),
    );
  }
}

class Dialog extends StatelessWidget {
  const Dialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: FilledButton(
          onPressed: () {
            NavPages.of(context).hideDialog();
          },
          child: Text('Close Dialog'),
        ),
      ),
    );
  }
}
