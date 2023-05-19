import "package:flutter/material.dart";

import "../models/person.dart";

class AppHeroWidget extends StatelessWidget {
  final Widget child;
  final Object tag;

  const AppHeroWidget({
    super.key,
    required this.child,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      flightShuttleBuilder: (
        flightContext,
        animation,
        flightDirection,
        fromHeroContext,
        toHeroContext,
      ) {
        switch (flightDirection) {
          case HeroFlightDirection.push:
            return Material(
              color: Colors.transparent,
              child: toHeroContext.widget,
            );

          case HeroFlightDirection.pop:
            return Material(
              color: Colors.transparent,
              child: fromHeroContext.widget,
            );
        }
      },
      child: child,
    );
  }
}
