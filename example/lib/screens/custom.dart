import 'package:flutter/material.dart';
import 'package:flutter_buttons/customButtons/hover_button.dart';

class Custom extends StatelessWidget {
  const Custom({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical:100),
      child: Column(
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
      ),
    );
  }
}
