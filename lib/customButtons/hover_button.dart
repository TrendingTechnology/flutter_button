library flutter_buttons;

import 'package:flutter/material.dart';

class LookNowButton extends StatefulWidget {
  @required
  final String title;
  final VoidCallback onTap;
  final Color borderColor;
  final Color spashColor;
  final Color titleColor;
  final Color tappedTitleColor;
  final double titleSize;
  final BorderRadiusGeometry borderRadius;

  LookNowButton({
    Key key,
    this.title,
    this.onTap,
    this.borderColor,
    this.spashColor,
    this.titleColor,
    this.tappedTitleColor,
    this.titleSize,
    this.borderRadius,
  }) : super(key: key);

  @override
  _LookNowButtonState createState() => _LookNowButtonState();
}

class _LookNowButtonState extends State<LookNowButton> {
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
            color: widget.borderColor,
          ),
          color: _isTapped ? widget.spashColor : null,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            widget.title,
            style: TextStyle(
              fontSize: widget.titleSize,
              color: _isTapped ? widget.tappedTitleColor : widget.titleColor,
            ),
          ),
        ),
      ),
    );
  }
}
