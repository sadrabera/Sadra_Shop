import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'boxes.dart';

class DigitalGoodsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: <Widget>[
          EveryBoxes(
            title: 'Laptop',
            image: 'assets/images/laptop.jpg',
            number: 100,
          ),
          EveryBoxes(
            title: 'Mobile',
            image: 'assets/images/mobile.jpg',
            number: 100,
          ),
        ],
      ),
      padding: EdgeInsets.only(left: 10, top: 10),
    );
  }
}
