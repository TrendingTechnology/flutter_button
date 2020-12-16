import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FacebookAuthButton extends StatefulWidget {
  @required
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color titleColor;
  final Color iconColor;
  final BorderRadiusGeometry borderRadius;
  final List<BoxShadow> shadows;
  final bool upperCasedTitle;
  final double fontSize;
  final bool wOpacity;
  final double opacityValue;

  FacebookAuthButton({
    this.onTap,
    this.backgroundColor,
    this.titleColor,
    this.iconColor,
    this.borderRadius,
    this.shadows,
    this.upperCasedTitle,
    this.fontSize,
    this.wOpacity,
    this.opacityValue,
  });
  @override
  _FacebookAuthButtonState createState() => _FacebookAuthButtonState();
}

class _FacebookAuthButtonState extends State<FacebookAuthButton> {
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
      child: (widget.wOpacity == false && widget.wOpacity == null)
          ? buildButton()
          : buildButtonWOpacity(),
    );
  }

  Opacity buildButtonWOpacity() {
    return Opacity(
      opacity: _isTapped ? widget.opacityValue : 1,
      child: buildButton(),
    );
  }

  Container buildButton() {
    return Container(
      decoration: buildBoxDecoration(),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.facebook,
              color:
                  (widget.iconColor == null) ? Colors.white : widget.iconColor,
              size: (widget.fontSize != null) ? widget.fontSize : 20,
            ),

            ///
            Text(
              (widget.upperCasedTitle == null &&
                      widget.upperCasedTitle == false)
                  ? "Sign in with Facebook"
                  : "Sign in with Facebook".toUpperCase(),
              style: TextStyle(
                color: (widget.titleColor == null)
                    ? Colors.white
                    : widget.titleColor,
                fontSize: 25,
              ),
            ),

            ///
          ],
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
      borderRadius: (widget.borderRadius != null)
          ? widget.borderRadius
          : BorderRadius.circular(10),
      color: (widget.backgroundColor == null)
          ? Color(0xff4267B2)
          : widget.backgroundColor,
      boxShadow: (widget.shadows != null) ? widget.shadows : [],
    );
  }
}

///
///
///

class CircularFBAuthButton extends StatefulWidget {
  final Color backgorundColor;
  final Color iconColor;
  final bool wOpacity;
  final bool wBorder;
  final Color borderColor;
  final double size;
  final double iconSize;
  final List<BoxShadow> shadows;

  CircularFBAuthButton({
    this.backgorundColor,
    this.iconColor,
    this.wOpacity,
    this.wBorder,
    this.borderColor,
    this.size,
    this.iconSize,
    this.shadows,
  });

  @override
  CircularFBAuthButtonState createState() => CircularFBAuthButtonState();
}

class CircularFBAuthButtonState extends State<CircularFBAuthButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: (widget.size == null) ? widget.size : 40,
      width: (widget.size == null) ? widget.size : 40,
      decoration: BoxDecoration(
        color: (widget.backgorundColor != null)
            ? widget.backgorundColor
            : Color(0xff4267B2),
        border: (widget.wBorder == null && widget.wBorder == false)
            ? BorderSide.none
            : Border.all(color: widget.borderColor),
        boxShadow: (widget.shadows == null) ? [] : widget.shadows,
      ),
      child: Center(
        child: FaIcon(
          FontAwesomeIcons.facebook,
          color: (widget.iconColor != null) ? Colors.white : widget.iconColor,
          size: (widget.iconSize == null) ? 35 : widget.iconSize,
        ),
      ),
    );
  }
}
