import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:furniture_app/components/search_box.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/products.dart';
import 'package:furniture_app/screens/details/details_screen.dart';
import 'package:furniture_app/screens/products/components/category_list.dart';
import 'package:furniture_app/screens/products/components/product_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            SearchBox(
              onchanged: (value) {},
            ),
            CategoryList(),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 70),
                    decoration: BoxDecoration(
                        color: kBackgroundColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                  ),
                  ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (BuildContext context, index) => ProductCard(
                      itemIndex: index,
                      product: products[index],
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => DetailsScreen(
                                product: products[index],
                              ),
                            ));
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
