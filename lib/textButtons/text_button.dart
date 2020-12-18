library flutter_buttons;

import 'package:flutter/material.dart';

class FlutterTextButton extends StatefulWidget {
  @required
  final String title;
  final bool wAnimation;
  final double defaultSize;
  final double pressedSize;
  final Color color;
  final FontWeight fontWeight;
  final Locale locale;

  FlutterTextButton({
    Key key,
    this.title,
    this.wAnimation,
    this.defaultSize,
    this.pressedSize,
    this.color,
    this.fontWeight,
    this.locale,
  }) : super(key: key);

  @override
  _FlutterTextButtonState createState() => _FlutterTextButtonState();
}

class _FlutterTextButtonState extends State<FlutterTextButton> {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      /// When you tap the button [_isTapped] would be [true] so pressed,
      onTapDown: (details) {
        setState(() {
          _isTapped = true;
        });
      },

      /// When cancel tapping the button [_isTapped] would be [false] so canceled,
      onTapCancel: () {
        setState(() {
          _isTapped = false;
        });
      },

      /// When you remove your finget on the button [_isTapped] would be [false] so didn't pressed,
      onTapUp: (details) {
        setState(() {
          _isTapped = false;
        });
      },
      child: buildText(),
    );
  }

  Widget buildText() {
    return Text(
      (widget.title != null) ? widget.title : "button title",
      style: TextStyle(
        /// When [_isTapped] is [true] the font size is smalling
        fontSize: _isTapped
            ? (widget.pressedSize != null)
                ? widget.pressedSize
                : 18
            : (widget.defaultSize != null)
                ? widget.defaultSize
                : 20,
        color: (widget.color != null) ? widget.color : Colors.black,
        fontWeight:
            (widget.fontWeight != null) ? widget.fontWeight : FontWeight.w500,
      ),
    );
  }
}

///
///
///
///
///
///
///
///
///
///
///    [GRADIENT TEXT BUTTON]
///

class GradientTextButton extends StatefulWidget {
  @required
  final String title;
  final bool wAnimation;
  final double defaultSize;
  final double pressedSize;
  final Color color;
  final FontWeight fontWeight;
  final bool wGradientColors;
  final List<Color> gradientColors;
  final AlignmentGeometry beginGradient;
  final AlignmentGeometry endGradient;
  final Locale locale;

  GradientTextButton({
    Key key,
    this.title,
    this.wAnimation,
    this.defaultSize,
    this.pressedSize,
    this.color,
    this.fontWeight,
    this.wGradientColors,
    this.gradientColors,
    this.beginGradient,
    this.endGradient,
    this.locale,
  }) : super(key: key);

  @override
  _GradientTextButtonState createState() => _GradientTextButtonState();
}

class _GradientTextButtonState extends State<GradientTextButton> {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      /// When you tap the button [_isTapped] would be [true] so pressed,
      onTapDown: (details) {
        setState(() {
          _isTapped = true;
        });
      },

      /// When cancel tapping the button [_isTapped] would be [false] so canceled,
      onTapCancel: () {
        setState(() {
          _isTapped = false;
        });
      },

      /// When you remove your finget on the button [_isTapped] would be [false] so didn't pressed,
      onTapUp: (details) {
        setState(() {
          _isTapped = false;
        });
      },
      child: buildText(),
    );
  }

  Widget buildText() {
    return Text(
      (widget.title != null) ? widget.title : "button title",
      style: TextStyle(
        /// When [_isTapped] is [true] the font size is smalling
        fontSize: _isTapped
            ? (widget.pressedSize != null)
                ? widget.pressedSize
                : 18
            : (widget.defaultSize != null)
                ? widget.defaultSize
                : 20,
        fontWeight:
            (widget.fontWeight != null) ? widget.fontWeight : FontWeight.w500,
        locale: widget.locale,
        foreground: Paint()
          ..shader = LinearGradient(
            begin: (widget.beginGradient != null)
                ? widget.beginGradient
                : Alignment.topRight,
            end: (widget.endGradient != null)
                ? widget.beginGradient
                : Alignment.centerLeft,
            colors: (widget.gradientColors != null)
                ? widget.gradientColors
                : [Colors.black, Colors.blueGrey[700]],
          ).createShader(
            Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
          ),
      ),
    );
  }
}
