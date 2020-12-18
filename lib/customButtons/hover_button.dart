library flutter_buttons;

import 'package:flutter/material.dart';


class HoverButton extends StatefulWidget {
  @required
  final String title;
  final VoidCallback onTap;
  final Color borderColor;
  final Color spashColor;
  final Color titleColor;
  final Color tappedTitleColor;
  final double titleSize;
  final FontWeight fontWeight;
  final BorderRadiusGeometry borderRadius;

  HoverButton({
    Key key,
    this.title,
    this.onTap,
    this.borderColor,
    this.spashColor,
    this.titleColor,
    this.tappedTitleColor,
    this.titleSize,
    this.borderRadius,
    this.fontWeight,
  }) : super(key: key);

  @override
  _HoverButtonState createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          _isTapped = true;
        });
      },
      onTapCancel: () {
        setState(() {
          _isTapped = false;
        });
      },
      onTapUp: (details) {
        setState(() {
          _isTapped = false;
        });
        widget.onTap();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: (widget.borderRadius == null)
              ? BorderRadius.circular(0)
              : widget.borderRadius,
          border: Border.all(
              width: 2,
              color: (widget.borderColor != null)
                  ? widget.borderColor
                  : Colors.black),
          color: _isTapped
              ? (widget.spashColor != null)
                  ? widget.spashColor
                  : Colors.purple
              : null,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            widget.title,
            style: TextStyle(
              fontSize: widget.titleSize,
              color: _isTapped
                  ? (widget.tappedTitleColor != null)
                      ? widget.tappedTitleColor
                      : Colors.white
                  : (widget.titleColor != null)
                      ? widget.titleColor
                      : Colors.black,
              fontWeight: widget.fontWeight,
            ),
          ),
        ),
      ),
    );
  }
}
