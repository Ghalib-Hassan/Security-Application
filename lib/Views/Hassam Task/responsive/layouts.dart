import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobilescaffold;
  final Widget tabletscaffold;
  final Widget desktopscaffold;

  const ResponsiveLayout({
    super.key,
    required this.mobilescaffold,
    required this.tabletscaffold,
    required this.desktopscaffold,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobilescaffold;
        } else if (constraints.maxWidth < 1100) {
          return tabletscaffold;
        } else {
          return desktopscaffold;
        }
      },
    );
  }
}
