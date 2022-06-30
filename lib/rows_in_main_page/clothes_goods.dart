import 'package:flutter/cupertino.dart';

import 'boxes.dart';

class ClothesGoods extends StatelessWidget {

  ClothesGoods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          MainBoxes(
            title: 'Men Fashion',
            image: 'assets/images/men_clothes.jpg',
            number: 100,
            fontSize: 15,
          ),
          const SizedBox(
            width: 20,
          ),
          MainBoxes(
            title: 'Women Fashion',
            image: 'assets/images/women_clothes.jpg',
            number: 100,
            fontSize: 14,
          ),
          SizedBox(
            width: 20,
          ),
          MainBoxes(
            title: 'Women Shoes',
            image: 'assets/images/women_shoes.jpeg',
            number: 100,
          ),
          SizedBox(
            width: 20,
          ),
          MainBoxes(
            title: 'Men shoes',
            image: 'assets/images/men_shoes.jpg',
            number: 100,
          ),
          SizedBox(
            width: 20,
          ),
          MainBoxes(
            title: 'Kids fashion',
            image: 'assets/images/children_clothes.jpg',
            number: 100,
          ),
        ],
      ),
      padding: EdgeInsets.only(left: 10, top: 10, bottom: 20),
    );
  }
}
