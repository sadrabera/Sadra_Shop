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
          EveryBoxes(
            title: 'Men fashion',
            image: 'assets/images/men_clothes.jpg',
            number: 100,
            fontSize: 15,
            data: allClothesGoods["Men fashion"],
          ),
          const SizedBox(
            width: 20,
          ),
          EveryBoxes(
            title: 'Women fashion',
            image: 'assets/images/women_clothes.jpg',
            number: 100,
            data: allClothesGoods["Women fashion"],
          ),
          SizedBox(
            width: 20,
          ),
          EveryBoxes(
            title: 'Women shoes',
            image: 'assets/images/women_shoes.jpeg',
            number: 100,
            data: allClothesGoods["Women shoes"],
          ),
          SizedBox(
            width: 20,
          ),
          EveryBoxes(
            title: 'Men shoes',
            image: 'assets/images/men_shoes.jpg',
            number: 100,
            data: allClothesGoods["Men shoes"],
          ),
          SizedBox(
            width: 20,
          ),
          EveryBoxes(
            title: 'Kids fashion',
            image: 'assets/images/children_clothes.jpg',
            number: 100,
            data: allClothesGoods["Kids fashion"],
          ),

        ],

      ),
      padding: EdgeInsets.only(left: 10, top: 10,bottom: 20),
    );
  }
}
