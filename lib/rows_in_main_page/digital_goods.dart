import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'boxes.dart';

class DigitalGoodsRow extends StatelessWidget {
  Map allDigitalGoods;

  DigitalGoodsRow({Key? key, required this.allDigitalGoods}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          MainBoxes(
            title: 'Laptop',
            image: 'assets/images/laptop.jpg',
            number: 100,
            data: allDigitalGoods['Laptop'],
          ),
          SizedBox(
            width: 20,
          ),
          MainBoxes(
            title: 'Mobile',
            image: 'assets/images/mobile.jpg',
            number: 100,
            data: allDigitalGoods['Mobile'],
          ),
          SizedBox(
            width: 20,
          ),
          MainBoxes(
            title: 'TV',
            image: 'assets/images/tv.jpg',
            number: 100,
            data: allDigitalGoods['TV'],
          ),
          SizedBox(
            width: 20,
          ),
          MainBoxes(
            title: 'Camera',
            image: 'assets/images/camera.jpg',
            number: 100,
            data: allDigitalGoods['Camera'],
          ),
        ],
      ),
      padding: EdgeInsets.only(left: 10, top: 10, bottom: 20),
    );
  }
}
