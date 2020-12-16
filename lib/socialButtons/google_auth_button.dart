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
  final double iconSize;
  @required
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
    this.iconSize,
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
      opacity: _isTapped
          ? (widget.opacityValue == null)
              ? .7
              : widget.opacityValue
          : 1,
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
              FontAwesomeIcons.google,
              color: (widget.iconColor == null)
                  ? Color(0xff4285F4)
                  : widget.iconColor,
              size: (widget.iconSize != null) ? widget.iconSize : 25,
            ),
            SizedBox(width: 10),

            ///
            Text(
              (widget.upperCasedTitle == null ||
                      widget.upperCasedTitle == false)
                  ? "facebook"
                  : "FACEBOOK",
              style: TextStyle(
                color: (widget.titleColor == null)
                    ? Color(0xff4285F4)
                    : widget.titleColor,
                fontSize: (widget.fontSize != null) ? widget.fontSize : 25,
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

///
///
///
///
///

class CircularGGAuthButton extends StatefulWidget {
  final VoidCallback onTap;
  final Color backgorundColor;
  final Color iconColor;
  final bool wOpacity;
  final bool wBorder;
  final Color borderColor;
  final double opacityValue;
  final double size;
  final double iconSize;
  final List<BoxShadow> shadows;
  final BorderRadiusGeometry borderRadius;

  CircularGGAuthButton({
    this.onTap,
    this.backgorundColor,
    this.iconColor,
    this.wOpacity,
    this.wBorder,
    this.borderColor,
    this.opacityValue,
    this.size,
    this.iconSize,
    this.shadows,
    this.borderRadius,
  });

  @override
  CircularGGAuthButtonState createState() => CircularGGAuthButtonState();
}

class CircularGGAuthButtonState extends State<CircularGGAuthButton> {
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
      child: (widget.wOpacity == null || widget.wOpacity == false)
          ? body()
          : Opacity(
              opacity: _isTapped
                  ? (widget.opacityValue != null)
                      ? widget.opacityValue
                      : .7
                  : 1,
              child: body(),
            ),
    );
  }

  Container body() {
    return Container(
      height: (widget.size != null) ? widget.size : 50,
      width: (widget.size != null) ? widget.size : 50,
      decoration: buildBoxDecoration(),
      child: buildButtonBody(),
    );
  }

  Center buildButtonBody() {
    return Center(
      child: FaIcon(
        FontAwesomeIcons.google,
        color:
            (widget.iconColor != null) ? widget.iconColor : Color(0xff4285F4),
        size: (widget.iconSize == null) ? 35 : widget.iconSize,
      ),
    );
  }

  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
      borderRadius: (widget.borderRadius == null) ? null : widget.borderRadius,
      color: (widget.backgorundColor != null)
          ? widget.backgorundColor
          : Colors.white,
      border: (widget.wBorder != null && widget.wBorder != false)
          ? Border.all(
              color: (widget.borderColor == null)
                  ? Colors.black
                  : widget.borderColor,
            )
          : null,
      boxShadow: (widget.shadows == null) ? [] : widget.shadows,
    );
  }
}


///
///
///
///
///


class MagicalGGButton extends StatefulWidget {
  final String title;
  final double opacityValue;
  final VoidCallback onTap;

  MagicalGGButton({
    this.title,
    this.opacityValue,
    this.onTap,
  });

  @override
  _MagicalGGButtonState createState() => _MagicalGGButtonState();
}

class _MagicalGGButtonState extends State<MagicalGGButton> {
  bool _isTapped = false;
  var imgPath = "assets/google.png";
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          _isTapped = true;
        });
      },
      onTapUp: (details) {
        setState(() {
          _isTapped = false;
        });
        widget.onTap();
      },
      onTapCancel: () {
        setState(() {
          _isTapped = false;
        });
      },
      child: Opacity(
        opacity: _isTapped
            ? (widget.opacityValue != null)
                ? widget.opacityValue
                : .7
            : 1,
        child: buildContainer(context),
      ),
    );
  }

  Container buildContainer(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: Colors.red[800].withOpacity(.6),
        borderRadius: BorderRadius.circular(30),
      ),
      width: MediaQuery.of(context).size.width - 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(imgPath),
          Text(
            widget.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Opacity(
            child: Image.asset(imgPath),
            opacity: 0,
          ),
        ],
      ),
    );
  }
}