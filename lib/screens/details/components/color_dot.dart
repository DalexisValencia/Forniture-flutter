import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';

class ColorDot extends StatelessWidget {
  final bool isSelected;
  final Color fillColor;

  ColorDot({this.isSelected = false, this.fillColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding / 2.5,
      ),
      padding: EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? Color(0XFF707070) : Colors.transparent,
          )),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}
