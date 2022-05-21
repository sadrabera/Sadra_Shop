import 'package:flutter/cupertino.dart';

import 'boxes.dart';

class ClothesGoods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          EveryBoxes(
            title: 'Men fashion',
            image: 'assets/images/men_clothes.jpg',
            number: 100,
            fontSize: 15,
          ),
          const SizedBox(
            width: 20,
          ),
          EveryBoxes(
            title: 'Women fashion',
            image: 'assets/images/women_clothes.jpg',
            number: 100,
          ),
          SizedBox(
            width: 20,
          ),
          EveryBoxes(
            title: 'women_shoes',
            image: 'assets/images/women_shoes.jpeg',
            number: 100,
          ),
          SizedBox(
            width: 20,
          ),
          EveryBoxes(
            title: 'men_shoes',
            image: 'assets/images/men_shoes.jpg',
            number: 100,
          ),
          SizedBox(
            width: 20,
          ),
          EveryBoxes(
            title: 'Children\'s fashion',
            image: 'assets/images/children_clothes.jpg',
            number: 100,
            fontSize: 13,
          ),

        ],

      ),
      padding: EdgeInsets.only(left: 10, top: 10,bottom: 20),
    );
  }
}
