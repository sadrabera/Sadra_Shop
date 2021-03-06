import 'package:flutter/cupertino.dart';

import 'boxes.dart';

class SportTrip extends StatelessWidget {

  SportTrip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          MainBoxes(
            title: 'Sport Clothes',
            image: 'assets/images/sport_clothes.jpeg',
            number: 100,
            fontSize: 15,
          ),
          const SizedBox(
            width: 20,
          ),
          MainBoxes(
            title: 'Sport Goods',
            image: 'assets/images/sporting_goods.jpg',
            number: 100,
          ),
          SizedBox(
            width: 20,
          ),
          MainBoxes(
            title: 'Camping Equipment',
            image: 'assets/images/travel_camping_equipment.jpg',
            number: 100,
            fontSize: 11,
          ),
        ],
      ),
      padding: EdgeInsets.only(left: 10, top: 10, bottom: 20),
    );
  }
}
