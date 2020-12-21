library flutter_button;

import 'package:flutter/material.dart';

class CustomFAB extends StatelessWidget {
  final Function onTap;
  final Widget child;
  final Color backgroundColor;
  final double elevation;
  final Color hoverColor;
  final Color splashColor;
  final double bottomLeftRadius;
  final double bottomRightRadius;
  final double topLeftRadius;
  final double topRightRadius;

  const CustomFAB(
      {Key key,
      this.child,
      this.onTap,
      this.backgroundColor,
      this.elevation,
      this.hoverColor,
      this.splashColor,
      this.bottomLeftRadius,
      this.bottomRightRadius,
      this.topLeftRadius,
      this.topRightRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      hoverColor: hoverColor,
      splashColor: splashColor,
      onPressed: onTap,
      elevation: elevation,
      backgroundColor: backgroundColor,
      child: child,
      shape: buildShape(),
    );
  }

  RoundedRectangleBorder buildShape() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(
          (bottomLeftRadius != null) ? bottomLeftRadius : 10,
        ),
        bottomRight: Radius.circular(
          (bottomRightRadius != null) ? bottomRightRadius : 10,
        ),
        topLeft: Radius.circular(
          (topLeftRadius != null) ? topLeftRadius : 10,
        ),
        topRight: Radius.circular(
          (topRightRadius != null) ? topRightRadius : 10,
        ),
      ),
    );
  }
}