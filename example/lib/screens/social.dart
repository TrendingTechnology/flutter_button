import 'package:flutter/material.dart';
import 'package:flutter_buttons/socialButtons/facebook_auth_button.dart';
import 'package:flutter_buttons/socialButtons/google_auth_button.dart';

class Social extends StatelessWidget {
  const Social({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          buildFacebookContainer(),
          SizedBox(height: 50),
          buildDivider(),
          SizedBox(height: 50),
          buildGoogleContainer(),
          SizedBox(height: 50),
          buildDivider(),
          SizedBox(height: 50),
          buildFacebooksMagicals(),
          SizedBox(height: 50),
          buildDivider(),
          SizedBox(height: 50),
          buildGooglesMagicals(),
          SizedBox(height: 50),
        ],
      ),
    );
  }

  Column buildGooglesMagicals() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Magical facebook auth button default mode
        MagicalGGButton(
          onTap: () {},
        ),
        SizedBox(height: 20),
        // You can add title, opacity value and onTap method
        MagicalGGButton(
          title: "Sign In With Google",
          opacityValue: .5,
          onTap: () {},
        ),
      ],
    );
  }

  Column buildFacebooksMagicals() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Magical facebook auth button default mode
        MagicalFBButton(
          onTap: () {},
        ),
        SizedBox(height: 20),
        // You can add title, opacity value and onTap method
        MagicalFBButton(
          title: "Sign In With Facebook",
          opacityValue: .5,
          onTap: () {},
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

  Column buildGoogleContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Google auth button with shadow
        GoogleAuthButton(
          onTap: () {},
          borderRadius: BorderRadius.circular(30),
          shadows: [
            BoxShadow(
                spreadRadius: 1.5,
                blurRadius: 10,
                offset: Offset(2, 7),
                color: Color(0xff4285F4)),
          ],
        ),
        SizedBox(height: 20),
        // Google Auth button with custom gradient and with custom opacity value and uppered case title
        GoogleAuthButton(
          onTap: () {},
          wGradientColors: true,
          wOpacity: true,
          upperCasedTitle: true,
          iconColor: Colors.white,
          titleColor: Colors.white,
          borderRadius: BorderRadius.circular(30),
          opacityValue: .5,
          gradientColors: [
            Colors.black,
            Colors.blueGrey,
          ],
        ),
        SizedBox(height: 20),
        // Circular Google auth button with default mode and with border radius and with shadow,
        CircularGGAuthButton(
          borderRadius: BorderRadius.circular(30),
          onTap: () {},
          shadows: [
            BoxShadow(
              spreadRadius: 1.5,
              blurRadius: 10,
              offset: Offset(2, 6),
              color: Color(0xff4285F4),
            ),
          ],
        ),
        SizedBox(height: 20),
        // Circular Facebook auth button with custom color and custom iconColor and opacity,
        CircularGGAuthButton(
          borderRadius: BorderRadius.circular(30),
          onTap: () {},
          wOpacity: true,
          iconColor: Colors.white,
          backgorundColor: Colors.black,
        ),
        SizedBox(height: 20),
        // Circular Facebook auth button with icon color and shadow,
        CircularGGAuthButton(
          borderRadius: BorderRadius.circular(30),
          onTap: () {},
          wOpacity: true,
          backgorundColor: Colors.white,
          iconColor: Colors.black,
          shadows: [
            BoxShadow(
              spreadRadius: 1.5,
              blurRadius: 10,
              offset: Offset(2, 6),
              color: Colors.black,
            ),
          ],
        ),
      ],
    );
  }
}

Column buildFacebookContainer() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // Facebook auth button default mode
      FacebookAuthButton(
        onTap: () {},
        borderRadius: BorderRadius.circular(30),
      ),
      SizedBox(height: 20),
      // Facebook Auth button with default gradient and with opacity
      FacebookAuthButton(
        onTap: () {},
        wGradientColors: true,
        wOpacity: true,
        borderRadius: BorderRadius.circular(30),
      ),
      SizedBox(height: 20),
      // Facebook Auth button with custom gradient and with custom opacity value and shadow
      FacebookAuthButton(
        onTap: () {},
        wGradientColors: true,
        wOpacity: true,
        borderRadius: BorderRadius.circular(30),
        opacityValue: .4,
        gradientColors: [
          Colors.black,
          Colors.blueGrey,
        ],
        shadows: [
          BoxShadow(
            spreadRadius: 1.5,
            blurRadius: 10,
            offset: Offset(2, 8),
            color: Color(0xff4267B2),
          ),
        ],
      ),
      SizedBox(height: 20),
      // Circular Facebook auth button with default mode and with border radius,
      CircularFBAuthButton(
        borderRadius: BorderRadius.circular(30),
        onTap: () {},
      ),
      SizedBox(height: 20),
      // Circular Facebook auth button with custom color and opacity,
      CircularFBAuthButton(
        borderRadius: BorderRadius.circular(30),
        onTap: () {},
        wOpacity: true,
        backgorundColor: Colors.black,
      ),
      SizedBox(height: 20),
      // Circular Facebook auth button with icon color and shadow,
      CircularFBAuthButton(
        borderRadius: BorderRadius.circular(30),
        onTap: () {},
        wOpacity: true,
        backgorundColor: Colors.white,
        iconColor: Colors.black,
        shadows: [
          BoxShadow(
            spreadRadius: 1.5,
            blurRadius: 10,
            offset: Offset(2, 6),
            color: Colors.black,
          ),
        ],
      ),
    ],
  );
}
