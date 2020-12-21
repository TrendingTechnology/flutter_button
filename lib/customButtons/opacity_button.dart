import 'package:flutter/material.dart';

class OpacityButton extends StatefulWidget {
  @required
  final Widget child;
  final double opacityValue;
  final VoidCallback onTap;

  const OpacityButton({
    Key key,
    this.child,
    this.onTap,
    this.opacityValue,

  }) : super(key: key);

  @override
  _OpacityButtonState createState() => _OpacityButtonState();
}

class _OpacityButtonState extends State<OpacityButton> {
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
      child: Opacity(
        opacity: _isTapped ? (widget.opacityValue != null) ? widget.opacityValue : .7 : 1,
        child: widget.child,
      ),
    );
  }
}
