# flutter_button

A Flutter buttons extansion. this extension contains:

- 3D Button,
- Anime Press Button, Hover Button, Like Button, Opacity Button
- Custom FAB, Star FAB.
- Facebook Auth Button, Circle FB Auth Button, Magical FB Auth Button, Google Auth Button, Circle GG Auth Button, Magical GG Auth Button
- Text Button, Gradient Text Button.

## Overview

**_Usage and everthing about this packages was underlined down below. or check example repo_** [example repository](https://github.com/theiskaa/flutter_button/tree/main/example).

<img src="https://github.com/theiskaa/flutter_button/blob/main/example/assets/gif/3D.gif" width="200"> <img src="https://github.com/theiskaa/flutter_button/blob/main/example/assets/gif/social.gif" width="200"> <img src="https://github.com/theiskaa/flutter_button/blob/main/example/assets/gif/custom.gif" width="200"> <img src="https://github.com/theiskaa/flutter_button/blob/main/example/assets/gif/text.gif" width="200"> <img src="https://github.com/theiskaa/flutter_button/blob/main/example/assets/gif/fab.gif" width="200">

# Installation and Usage.

add this line on the `pubspec.yaml`

```dart
dependencies:
  ...
  flutter_button: ^0.0.1
```

after than start using package with implementing library path.

# 🛑 3D Button usage

**_Default Mode_**

```dart
import 'package:flutter_button/3dButtons/3d_button.dart';

Button3D(
 onPressed: () {},
 child: Text("3d Button"),
),
```

**_3D Buttons With the custom properties_**

```dart
import 'package:flutter_button/3dButtons/3d_button.dart';

 Button3D(
 style: StyleOf3dButton(
    backColor: Colors.red[900],
    topColor: Colors.red[400],
    borderRadius: BorderRadius.circular(30),
 ),
  height: 100,
  width: 200,
  onPressed: () {},
  child: Text("3d Button"),
),
```

# ⚛︎ Social Auth Buttons

**_Default Mode_**

```dart
import 'package:flutter_button/socialButtons/facebook_auth_button.dart';

 FacebookAuthButton(
  onTap: () {},
  borderRadius: BorderRadius.circular(30),
),
```

**_Facebook Auth Button with custom properties_**

```dart
import 'package:flutter_button/socialButtons/facebook_auth_button.dart';

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
   color: Colors.black,
  ),
 ],
)   ,
```

**_Default Mode of Google Auth Button_**

```dart
import 'package:flutter_button/socialButtons/google_auth_button.dart';

GoogleAuthButton(
 onTap: () {},
 borderRadius: BorderRadius.circular(30),
 shadows: [
   BoxShadow(
    spreadRadius: 1.5,
    blurRadius: 10,
    offset: Offset(2, 7),
    color: Color(0xff4285F4),
 ),
]
,),
```

**_Google Auth Button with custom properties_**

```dart
import 'package:flutter_button/socialButtons/google_auth_button.dart';

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
 shadows: [
   BoxShadow(
    spreadRadius: 1.5,
    blurRadius: 10,
    offset: Offset(2, 7),
    color: Color(0xff4285F4),
  ),
 ]
),
```

### Circular Auth Buttons

**_Facebook_**

```dart
import 'package:flutter_button/socialButtons/facebook_auth_button.dart';

CircularFBAuthButton(
  borderRadius: BorderRadius.circular(30),
  onTap: () {},
  shadows: [
    BoxShadow(
     spreadRadius: 1.5,
     blurRadius: 10,
     offset: Offset(2, 6),
     color: Colors.black,
    ),
  ],
),
```

**_Google_**

```dart
import 'package:flutter_button/socialButtons/google_auth_button.dart';

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
```

### Magical Auth Buttons

**_Facebook_**

```dart
import 'package:flutter_button/socialButtons/facebook_auth_button.dart';

MagicalFBButton(
  title: "Sign In With Facebook",
  opacityValue: .5,
  onTap: () {},
),
```

**_Google_**

```dart
import 'package:flutter_button/socialButtons/google_auth_button.dart';

MagicalGGButton(
  title: "Sign In With Google",
  opacityValue: .5,
  onTap: () {},
),
```

# 💢 Custom Buttons: Hover, like, Opacity, Animation

## 🌪 Hover Button:

**_Default mode_**

```dart
import 'package:flutter_button/customButtons/hover_button.dart';

HoverButton(
  title: "Hover Button",
  onTap: () {},
),
```

**_All properties used version_**

```dart
import 'package:flutter_button/customButtons/hover_button.dart';

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
```

## ❤️ Like Button:

**_Default mode_**

```dart
import 'package:flutter_button/customButtons/like_button.dart';

LikeButton(
  onTap: () {},
),
```

**_All properties used version_**

```dart
import 'package:flutter_button/customButtons/like_button.dart';

LikeButton(
  icon: Icons.home,
  deactiveColor: Colors.grey,
  activeColor: Colors.purple,
  deactiveSize: 50,
  activeSize: 55,
  curve: Curves.easeInExpo,
  onTap: () {},
),
```

## 👻 Opacity Button:

```dart
import 'package:flutter_button/customButtons/opacity_button.dart';

OpacityButton(
  onTap: () {},
  opacityValue: .3,
  child: Image.network(
    'https://picsum.photos/id/1/200/300',
    height: 60,
  ),
),
```

## ⭐️ Animation Button:

```dart
AnimePressButton(
  borderRadius: BorderRadius.circular(100),
  color: Colors.red,
  wGradient: true,
  gradientColors: [
    Colors.pink,
    Colors.purpleAccent,
  ],
  title: "Animation Button",
  titleColor: Colors.white,
),
```

# 🆃 Text Buttons

## Normal Text Button:

```dart
FlutterTextButton(
  onTap: () {},
  title: "Flutter Normal TextButton",
  defaultSize: 25,
  textAlign: TextAlign.center,
  pressedSize: 22,
  color: Colors.red[700],
  fontWeight: FontWeight.bold,
  // [locale:] Whathever you want
  // [fontFamily:] type your fontFamily
),
```

## 🏳️‍🌈 Gradient text button:

```dart
GradientTextButton(
  onTap: () {},
  title: "Gradient Text Button",
  gradientColors: [
    Colors.red,
    Colors.orange[800],
    Colors.yellow[700],
    Colors.limeAccent[400],
    Colors.blue[900],
    Colors.purple,
    Colors.purple[900]
  ],
  beginGradient: Alignment.topCenter,

  /// [endGradient: ...] also you can add this endGradient function
  defaultSize: 25,
  textAlign: TextAlign.center,
  pressedSize: 22,
  fontWeight: FontWeight.bold,
  /// [locale:] Whathever you wanna
  /// [fontFamily:] type your fontFamily
),
```

# 🔵 Floating Action Buttons

## ⚫️ Custom FAB

**_Default Mode_**

```dart
CustomFAB(
 child: Icon(Icons.add),
 onTap: () {},
)
```

**_Custom Fab with all properties_**

```dart
CustomFAB(
 onTap: () {},
 child: Icon(Icons.add),
 backgroundColor: Colors.red,
 splashColor: Colors.black,
 hoverColor: Colors.blueGrey,
 topLeftRadius: 30,
 bottomRightRadius: 30,
 /// Also you can add this property [bottomLeftRadius:]
 /// And this [topRightRadius:]
),
```

## ⭐️ Star FAB

**_Default Mode_**

```dart
StarFAB(
 child: Icon(Icons.add),
 onTap: () {},
),
```

**_Custom Fab with all properties_**

```dart
StarFAB(
 backgroundColor: Colors.black,
 child: Icon(Icons.add),
 splashColor: Colors.red,
 elevation: 5,
 onTap: () {},
),
```

if you wanna to look this package's full usage exapmle, check the example repo which one is down to this package's repository: [example repository](https://github.com/theiskaa/flutter_button/tree/main/example).
