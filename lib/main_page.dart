import 'package:flutter/material.dart';
import 'package:untitled/rows_in_main_page/advettisment.dart';
import 'package:untitled/rows_in_main_page/books_stationary.dart';
import 'package:untitled/rows_in_main_page/clothes_goods.dart';
import 'package:untitled/rows_in_main_page/digital_goods.dart';
import 'package:untitled/rows_in_main_page/sport_trip.dart';

class MyMainPage extends StatelessWidget {
  MyMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            hereText('Digitals'),
            DigitalGoodsRow(),
            Advertisement(imageAddress: 'assets/images/adv.jpg'),
            // hereText('Fashions'),
            // ClothesGoods(),
            // Advertisement(imageAddress: 'assets/images/adv2.png'),
            // hereText('Books and stationary'),
            // BooksStationary(),
            // hereText('Sports And Trip'),
            // SportTrip(),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        padding: EdgeInsets.only(left: 10, top: 10),
      ),
    );
  }
}

class hereText extends StatelessWidget {
  String name;

  hereText(this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        fontSize: 30,
        fontFamily: 'Roboto',
        shadows: [
          Shadow(
            color: Colors.grey,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
    );
  }
}
