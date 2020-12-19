import 'package:flutter/material.dart';
import 'package:flutter_buttons/FABS/custom_fab.dart';
import 'package:flutter_buttons/FABS/star_fab.dart';

class FabScreen extends StatelessWidget {
  const FabScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(50),
        child: Center(
          child: Column(
            children: [
              buildCustomFabs(),
              SizedBox(height: 50),
              buildDivider(),
              SizedBox(height: 50),
              buildStarFabs(),
            ],
          ),
        ),
      ),
    );
  }

  Column buildStarFabs() {
    return Column(
      children: [
        /// Default Star FAB
        StarFAB(
          child: Icon(Icons.add),
          onTap: () {},
        ),
        SizedBox(height: 50),

        /// All properties was used
        StarFAB(
          backgroundColor: Colors.black,
          child: Icon(Icons.add),
          splashColor: Colors.red,
          elevation: 5,
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

  Column buildCustomFabs() {
    return Column(
      children: [
        /// Default Custom FAB
        CustomFAB(
          child: Icon(Icons.add),
          onTap: () {},
        ),
        SizedBox(height: 50),

        /// All properties was used
        CustomFAB(
          onTap: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.red,
          splashColor: Colors.black,
          hoverColor: Colors.blueGrey,
          topLeftRadius: 30,
          bottomRightRadius: 30,
          //
          /// Also you can add this property [bottomLeftRadius:]
          /// And this [topRightRadius:]
        ),
      ],
    );
  }
}
