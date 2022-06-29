import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/main.dart';

import 'boxes.dart';

class DigitalGoodsRow extends StatelessWidget {

  DigitalGoodsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {




    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: FutureBuilder(
          future: Future.delayed( Duration(milliseconds: 100)),
          builder: (context, snapshot) {
            return Row(
              children: <Widget>[
                MainBoxes(
                  title: 'Laptop',
                  image: 'assets/images/laptop.jpg',
                  number: 100,
                ),
                SizedBox(
                  width: 20,
                ),
                MainBoxes(
                  title: 'Mobile',
                  image: 'assets/images/mobile.jpg',
                  number: 100,
                ),
                SizedBox(
                  width: 20,
                ),
                MainBoxes(
                  title: 'TV',
                  image: 'assets/images/tv.jpg',
                  number: 100,
                ),
                SizedBox(
                  width: 20,
                ),
                MainBoxes(
                  title: 'Camera',
                  image: 'assets/images/camera.jpg',
                  number: 100,
                ),
              ],
            );
          }),
      padding: EdgeInsets.only(left: 10, top: 10, bottom: 20),
    );
  }
}
