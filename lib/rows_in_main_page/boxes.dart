import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EveryBoxes extends StatelessWidget{
   String title, image;
   int number;
   double? fontSize;
   EveryBoxes({ required this.title, required this.image, required this.number,this.fontSize});

  @override
  Widget build(BuildContext context) {
    fontSize ??= 15;
    return InkWell(
      child: SizedBox(
        width: 105,
        height: 130,
        child: Container(
            child:Column(
              children: <Widget>[
                Image.asset(image, width: 90, height: 80,),
                SizedBox(
                  height: 10,
                ),
                Text(title, style: TextStyle(fontSize: fontSize, fontFamily: 'Roboto',),),
                Text("+"+number.toString(), style: TextStyle(fontSize: 15, fontFamily: 'Roboto',color: Colors.green),),
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
      ),
      onTap: (){
        print('click');
      },
    );

  }

}