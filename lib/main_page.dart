import 'package:flutter/cupertino.dart';
import 'package:untitled/rows_in_main_page/digital_goods.dart';

class MyMainPage extends StatelessWidget {
  const MyMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children:   [
            Text(
              'Digital goods',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Roboto',
              ),
            ),
            DigitalGoodsRow(),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        padding:  EdgeInsets.only(left: 10, top: 10),
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
