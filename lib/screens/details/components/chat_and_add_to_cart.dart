import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants.dart';

class ChatAndAddToCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(
        kDefaultPadding,
      ),
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
          color: Color(0XFFFCBF1E), borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: <Widget>[
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: 18,
          ),
          SizedBox(
            width: kDefaultPadding / 2,
          ),
          Text(
            "chat",
            style: TextStyle(color: Colors.white),
          ),
          Spacer(),
          FlatButton.icon(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/shopping-bag.svg",
                height: 18,
              ),
              label: Text(
                "Add to Cart",
                style: TextStyle(
                  color: Colors.white,
                ),
              ))
        ],
      ),
    );
  }
}
