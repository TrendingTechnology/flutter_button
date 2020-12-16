library flutter_buttons;

import 'package:flutter/material.dart';

class FlutterTextButton extends StatefulWidget {
  @required
  final String title;
  final bool wOpacity;
  final bool wAnimation;
  final double opacityValue;
  @required
  final double defaultSize;
  @required
  final double pressedSize;
  @required
  final Color color;
  final FontWeight fontWeight;

  FlutterTextButton(
      {Key key,
      this.title,
      this.wOpacity,
      this.wAnimation,
      this.opacityValue,
      this.defaultSize,
      this.pressedSize,
      this.color,
      this.fontWeight})
      : super(key: key);

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
      child: (widget.wOpacity == null && widget.wOpacity == false)
          ? buildText()
          : Opacity(
              opacity: _isTapped
                  ? (widget.opacityValue == null)
                      ? .7
                      : widget.opacityValue
                  : 1,
              child: buildText(),
            ),
    );
  }

  Widget buildText() {
    return Text(
      widget.title,
      style: TextStyle(
        fontSize: _isTapped ? widget.pressedSize : widget.defaultSize,
        color: (widget.color != null) ? widget.color : Colors.black,
        fontWeight:
            (widget.fontWeight != null) ? widget.fontWeight : FontWeight.w500,
      ),
    );
  }
}
