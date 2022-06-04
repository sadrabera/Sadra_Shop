import 'package:flutter/cupertino.dart';

import 'boxes.dart';

class BooksStationary extends StatelessWidget {
  Map allBooksStationary;

  BooksStationary({Key? key, required this.allBooksStationary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          MainBoxes(
            title: 'Book',
            image: 'assets/images/book.jpg',
            number: 100,
            fontSize: 15,
            data: allBooksStationary["Book"],
          ),
          const SizedBox(
            width: 20,
          ),
          MainBoxes(
            title: 'Stationary',
            image: 'assets/images/stationary.jpg',
            number: 100,
            data: allBooksStationary["Stationary"],
          ),
          SizedBox(
            width: 20,
          ),
          MainBoxes(
            title: 'Music',
            image: 'assets/images/music.jpg',
            number: 100,
            data: allBooksStationary["Music"],
          ),
          SizedBox(
            width: 20,
          ),
          MainBoxes(
            title: 'Handicrafts',
            image: 'assets/images/handicrafts.jpg',
            number: 100,
            data: allBooksStationary["Handicrafts"],
          ),
        ],
      ),
      padding: EdgeInsets.only(left: 10, top: 10, bottom: 20),
    );
  }
}
