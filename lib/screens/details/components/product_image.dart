import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';

class ProductPoster extends StatelessWidget {
  final Size size;
  final String image;
  const ProductPoster({Key key, this.size, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 0.8,
      // color: Colors.black,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
              height: size.width * 0.7,
              width: size.width * 0.7,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              )),
          Image.asset(
            image,
            width: size.width * 0.75,
            height: size.height * 0.75,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
