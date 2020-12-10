import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screens/products/components/body.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Text('DashBoard'),
      centerTitle: false,
      actions: <Widget>[
        IconButton(
            icon: SvgPicture.asset("assets/icons/notification.svg"),
            onPressed: () {})
      ],
    );
  }
}
