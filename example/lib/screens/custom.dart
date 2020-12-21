import 'package:flutter/material.dart';
import 'package:flutter_buttons/customButtons/hover_button.dart';
import 'package:flutter_buttons/customButtons/like_button.dart';
import 'package:flutter_buttons/customButtons/opacity_button.dart';

class Custom extends StatelessWidget {
  const Custom({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 50),
      child: Column(
        children: [
          buildHoverButtons(),
          SizedBox(height: 50),
          buildDivider(),
          SizedBox(height: 50),
          lovebuttons(),
          SizedBox(height: 50),
          buildDivider(),
          SizedBox(height: 50),
          buildOpacityButtons(),
        ],
      ),
    );
  }

  Column buildOpacityButtons() {
    return Column(
      children: [
        /// Opacity Button with default [opacityValue]
        OpacityButton(
          onTap: () {},
          child: Image.asset(
            'assets/like.png',
            height: 50,
          ),
        ),
        SizedBox(height: 30),

        /// Opacity Button with the custom [opacityValue]
        OpacityButton(
          onTap: () {},
          opacityValue: .3,
          child: Image.asset(
            'assets/like.png',
            height: 60,
          ),
        ),
      ],
    );
  }

  Column lovebuttons() {
    return Column(
      children: [
        //Default mode
        LikeButton(
          onTap: () {},
        ),
        SizedBox(height: 30),

        /// Attention! if you do some changing on like button you must to do [hot reolad] for view changes
        // Like Button with fully options
        LikeButton(
          icon: Icons.home,
          deactiveColor: Colors.grey,
          activeColor: Colors.purple,
          deactiveSize: 50,
          activeSize: 55,
          curve: Curves.easeInExpo,
          onTap: () {},
        ),
      ],
    );
  }

  Column buildHoverButtons() {
    return Column(
      children: [
        // Default Mode
        HoverButton(
          title: "Hover Button",
          onTap: () {},
        ),
        SizedBox(height: 50),
        // Hover button with custom spalsh color,custom title size and border radius
        HoverButton(
          onTap: () {},
          title: "Buy Now",
          spashColor: Colors.red,
          titleSize: 20,
          borderRadius: BorderRadius.circular(30),
        ),
        SizedBox(height: 50),
        // And this is all options used version
        HoverButton(
          onTap: () {},
          title: "Add To Cart",
          titleSize: 30,
          titleColor: Colors.orange[900],
          spashColor: Colors.yellow,
          tappedTitleColor: Colors.black,
          fontWeight: FontWeight.bold,
          borderColor: Colors.orange[900],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
      ],
    );
  }

  Container buildDivider() {
    return Container(
      height: 2,
      color: Colors.black,
    );
  }
}
