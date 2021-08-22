import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_fp1/constants.dart';
import 'package:shop_fp1/screens/home/components/bodyComponent.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {
          print("cart btn tapped");
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: kTextColor,
          ),
          onPressed: () {
            print("search tapped");
          },
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: kTextColor,
          ),
          onPressed: () {
            print("search tappeed");
          },
        ),
        SizedBox(width: kDefaultPadding)
      ],
    );
  }
}
