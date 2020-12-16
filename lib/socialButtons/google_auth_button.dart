import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GoogleAuthButton extends StatefulWidget {
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

  GoogleAuthButton({
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
  _GoogleAuthButtonState createState() => _GoogleAuthButtonState();
}

class _GoogleAuthButtonState extends State<GoogleAuthButton> {
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
                  (widget.iconColor == null) ? Color(0xff4285F4) : widget.iconColor,
              size: (widget.fontSize != null) ? widget.fontSize : 20,
            ),

            ///
            Text(
              (widget.upperCasedTitle == null &&
                      widget.upperCasedTitle == false)
                  ? "Sign in with Google"
                  : "Sign in with Google".toUpperCase(),
              style: TextStyle(
                color: (widget.titleColor == null)
                    ? Color(0xff4285F4)
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
          ? Colors.white
          : widget.backgroundColor,
      boxShadow: (widget.shadows != null) ? widget.shadows : [],
    );
  }
}
