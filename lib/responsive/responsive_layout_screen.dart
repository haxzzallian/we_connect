import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout(
      {super.key,
      required this.mobileScreenLayout,
      required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.minWidth > webScreenSize) {
        return webScreenLayout;
      } else {
        return mobileScreenLayout;
      }
    });
  }
}
