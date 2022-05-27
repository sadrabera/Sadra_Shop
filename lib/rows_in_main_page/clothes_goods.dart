import 'package:flutter/cupertino.dart';

import 'boxes.dart';

class ClothesGoods extends StatelessWidget {
  Map allClothesGoods;
  ClothesGoods({Key? key ,required this.allClothesGoods }) : super(key: key);
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
            data: allClothesGoods["Men Fashion"],
          ),
          const SizedBox(
            width: 20,
          ),
          MainBoxes(
            title: 'Women Fashion',
            image: 'assets/images/women_clothes.jpg',
            number: 100,
            fontSize: 14,
            data: allClothesGoods["Women Fashion"],
          ),
          SizedBox(
            width: 20,
          ),
          MainBoxes(
            title: 'Women Shoes',
            image: 'assets/images/women_shoes.jpeg',
            number: 100,
            data: allClothesGoods["Women Shoes"],
          ),
          SizedBox(
            width: 20,
          ),
          MainBoxes(
            title: 'Men shoes',
            image: 'assets/images/men_shoes.jpg',
            number: 100,
            data: allClothesGoods["Men Shoes"],
          ),
          SizedBox(
            width: 20,
          ),
          MainBoxes(
            title: 'Kids fashion',
            image: 'assets/images/children_clothes.jpg',
            number: 100,
            data: allClothesGoods["Kid Fashion"],
          ),

        ],

      ),
      padding: EdgeInsets.only(left: 10, top: 10,bottom: 20),
    );
  }
}
