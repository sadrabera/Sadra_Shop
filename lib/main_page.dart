import 'package:flutter/material.dart';
import 'package:untitled/rows_in_main_page/advettisment.dart';
import 'package:untitled/rows_in_main_page/books_stationary.dart';
import 'package:untitled/rows_in_main_page/boxes.dart';
import 'package:untitled/rows_in_main_page/clothes_goods.dart';
import 'package:untitled/rows_in_main_page/digital_goods.dart';

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
            hereText('Clothes fashion'),
            ClothesGoods(),
            Advertisement(imageAddress: 'assets/images/adv2.jpg'),
            hereText('Books and stationary'),
            BooksStationary(),


          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        padding: EdgeInsets.only(left: 10, top: 10),
      ),
    );
    // floatingActionButton: FloatingActionButton(
    // child: const Icon(
    // Icons.add_a_photo_outlined,
    // ),
    // onPressed: () {
    // print("click");
    // },
    // ),
  }
}

class hereText extends StatelessWidget {
  String name;
  hereText(this.name,{Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
         Text(
          name,
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'Roboto',
            shadows: [
              Shadow(
                color: Colors.grey,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
        );
  }
}

