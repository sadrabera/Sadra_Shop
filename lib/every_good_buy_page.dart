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
  //TODO temp,i should change constructor to socket
  @override
  void initState() {
    super.initState();
  }
  int state = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: IconButton(
          icon: Icon(
            CupertinoIcons.suit_heart_fill,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(


            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          SizedBox(
            height: 10,
          ),

          SizedBox(
            child: PageView(
              onPageChanged: (index) {
                setState(() {
                  state = index;
                });
              },

              scrollDirection:Axis.horizontal,
              children: [
                for (int i = 0; i < 3 /*TODO widget.data.images.length*/; i++)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.network(
                        widget.data.image,
                        width: MediaQuery.of(context).size.width,
                      ),
                      imageDotBuilder(i),
                    ],
                  ),
              ],
            ),
            height: 300,
            width: double.infinity,
          ),
          SizedBox(
            height: 20,
            width: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                if (state==index) {
                  return Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
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
          ),
          //sell page
          const Text("Color",
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
              )),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.add_shopping_cart),
        backgroundColor: Colors.orange,
      ),
    );
  }

  SizedBox imageDotBuilder(int i) {
    return SizedBox(
      height: 20,
      width: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          if (i == index) {
            return Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
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
}
