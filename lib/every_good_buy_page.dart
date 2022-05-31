import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled/buy_page.dart';

class EveryGoodBuyPage extends StatefulWidget {
  Goods data;

  EveryGoodBuyPage({Key? key, required this.data}) : super(key: key);

  @override
  State<EveryGoodBuyPage> createState() => _EveryGoodBuyPageState();
}

class _EveryGoodBuyPageState extends State<EveryGoodBuyPage> {
  Map fakeData = {
    "Color": [
      "Red:0xFFC62828",
      "Blue:0xFFE3F2FD",
      "Green:0xFFE8F5E9",
      "Yellow:0xFFFBE9E7",
      "Pink:0xFFFCE4EC",
      "Purple:0xFFEBF4FF",
      "Black:0xFF000000",
      "White:0xFFFFFFFF",
    ],
    "Size": [
      "XS",
      "S",
      "M",
      "L",
      "XL",
      "XXL",
    ]
  }; //TODO: get data from server
  //TODO temp,i should change constructor to socket
  @override
  void initState() {
    super.initState();
  }

  int selectedColor = 0;
  int state = 0;
  int selectedSize = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        actions: [

          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {

            },
          ),
        ],
      ),

      bottomNavigationBar: hereNavigationButtomBiulder(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 10,
            ),

            SizedBox(
              child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [

                    PageView(
                      onPageChanged: (index) {
                        setState(() {
                          state = index;
                        });
                      },
                      scrollDirection: Axis.horizontal,
                      children: [
                        for (int i = 0; i <
                            3 /*TODO widget.data.images.length*/; i++)
                          Image.network(
                            widget.data.image,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                          ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(EvaIcons.heart),
                        color: Colors.red,
                      ),
                    ),
                  ]),
              height: 300,
              width: double.infinity,
            ),
            buildChangePageDots(),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.data.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            //sell page
            SizedBox(
              height: 20,
            ),
            Text(
              "${widget.data.rate}⭐",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Color:${fakeData['Color'][selectedColor].split(":")[0]}",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 17,
                )),

            buildColorMaker(),


            sizesListView()
          ]
          ),
        ),
      ),

    );
  }


  BottomAppBar hereNavigationButtomBiulder() {
    return BottomAppBar(
      color: Colors.grey[200],
      child: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Add to cart',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                )),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                '\$' + widget.data.price.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  SizedBox buildColorMaker() {
    return SizedBox(
      width: double.infinity,
      height: 80,
      child: ListView.builder(
          padding: EdgeInsets.all(4),
          scrollDirection: Axis.horizontal,
          itemCount: fakeData["Color"].length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                everyColorBoxBuilder(index),
                SizedBox(
                  width: 10,
                ),
              ],
            );
          }),
    );
  }

  InkWell everyColorBoxBuilder(int index) {
    var borderColor;
    if (selectedColor == index) {
      borderColor = Colors.orange;
    } else {
      borderColor = Colors.white;
    }
    return InkWell(
      onTap: () {
        setState(() {
          selectedColor = index;
        });
      },
      child: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: borderColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            Stack(children: [
              IconButton(
                padding: EdgeInsets.all(0),
                icon: Icon(
                  Icons.circle_outlined,
                  color: Colors.black12,
                ),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 20,
                padding: EdgeInsets.all(0),
                onPressed: () {
                  setState(() {
                    selectedColor = index;
                  });
                },
                icon: Icon(
                  Icons.circle,
                  color: Color(int.parse(fakeData["Color"][index].split(":")[
                      1])), //TODO: get color from server and converting from string may be wrong!
                ),
              )
            ]),
            Text(fakeData["Color"][index].split(":")[0],
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 13,
                )),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }

  SizedBox buildChangePageDots() {
    return SizedBox(
      height: 20,
      width: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          if (state == index) {
            return Container(
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
              ),
            );
          }
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 1),
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  )),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    )),
              ),
            ),
          );
        },
      ),
    );
  }


  SizedBox sizesListView() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,

        padding: EdgeInsets.symmetric(horizontal: 3),
        scrollDirection: Axis.horizontal,


        itemBuilder: (context, index) {
          return Row(
            children: [
              Text(fakeData["Size"][index],
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 17,
                  )),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    )),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      )),
                ),
              ),
            ],
          );



      },
        itemCount: fakeData['Size'].length,
      ),
    );
  }
}