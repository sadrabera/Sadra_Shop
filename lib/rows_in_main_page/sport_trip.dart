import 'package:flutter/cupertino.dart';

import 'boxes.dart';

class SportTrip extends StatelessWidget {
  Map allSportTrip;
  SportTrip({Key? key ,required this.allSportTrip }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          EveryBoxes(
            title: 'SportClothes',
            image: 'assets/images/sport_clothes.jpeg',
            number: 100,
            fontSize: 15,
            data: allSportTrip["SportClothes"],
          ),
          const SizedBox(
            width: 20,
          ),
          EveryBoxes(
            title: 'Sport Goods',
            image: 'assets/images/sport_goods.jpg',
            number: 100,
            data: allSportTrip["Sport Goods"],
          ),
          SizedBox(
            width: 20,
          ),
          EveryBoxes(
            title: 'Camping equipment',
            image: 'assets/images/travel_camping_equipment.jpg',
            number: 100,
            data: allSportTrip["Music"],
          ),



        ],

      ),
      padding: EdgeInsets.only(left: 10, top: 10,bottom: 20),
    );
  }
}
