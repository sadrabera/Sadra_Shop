import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Advertisement extends StatelessWidget {
  String imageAddress;

  Advertisement({Key? key, required this.imageAddress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: SizedBox(
          width: 400, //-40
          height: 280, //-40
          child: Image.asset(imageAddress, fit: BoxFit.fill),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 20,
      ),
    ]);
  }
}
