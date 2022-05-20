import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EveryBoxes extends StatelessWidget{
   String title, image;
   int number;
   EveryBoxes({ required this.title, required this.image, required this.number});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          child:Column(
            children: <Widget>[
              Image.asset(image, width: 100, height: 80,),
              Text(title, style: TextStyle(fontSize: 20, fontFamily: 'Roboto',),),
              Text(number.toString(), style: TextStyle(fontSize: 20, fontFamily: 'Roboto',),),
            ],
          ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
      ),
      onTap: (){
        print('click');
      },
    );

  }

}