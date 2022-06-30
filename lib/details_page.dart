import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled/main_page.dart';
import 'package:untitled/purchase_page.dart';

import 'good.dart';
import 'main.dart';

class EveryGoodBuyPage extends StatefulWidget {
  Goods data;
  Map colorConvertor = {
    "Red": "0xFFC62828",
    "Orange": "0xFFFF9800",
    "Blue": "0xFF2196F3",
    "Green": "0xFF69F0AE",
    "Yellow": "0xFFFFFF00",
    "Pink": "0xFFE91E63",
    "Purple": "0xFF9C27B0",
    "Black": "0xFF000000",
    "White": "0xFFFFFFFF"
  };

  EveryGoodBuyPage({Key? key, required this.data}) : super(key: key);

  @override
  State<EveryGoodBuyPage> createState() => _EveryGoodBuyPageState();
}

class _EveryGoodBuyPageState extends State<EveryGoodBuyPage> {
  @override
  void initState() {
    super.initState();
  }

  int selectedColor = 0;
  int state = 0;
  int selectedSize = 0;
  int satisfaction = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PurchasePage(),
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: hereNavigationButtomBiulder(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 10,
            ),

            SizedBox(
              child: Stack(alignment: Alignment.bottomRight, children: [
                PageView(
                  onPageChanged: (index) {
                    setState(() {
                      state = index;
                    });
                  },
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (int i = 0; i < widget.data.image.length; i++)
                      Image.network(
                        widget.data.image[i],
                        width: MediaQuery.of(context).size.width,
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
                    onPressed: () {
                      MyApp.socket?.write("add to liked:${widget.data.title}\u0000");
                      MyApp.socket?.flush();
                      MyApp.stream?.listen((data) {
                        if (String.fromCharCodes(data) == "added") {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Added to favorites'),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Sign in to add to favorites'),
                            ),
                          );
                        }
                      });
                    },
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
            Text("Color:${widget.data.colors[selectedColor]}",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 17,
                )),

            buildColorMaker(),

            Text(
              "Size:${widget.data.sizes[selectedSize]}",
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 17,
              ),
            ),
            sizesListView(),

            SizedBox(
              height: 20,
            ),
            Text(
              "Seller:${widget.data.ownerNickName}",
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 17,
              ),
            ),
                SizedBox(
                  height: 20,
                ),

            Text(
              "Description:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.data.description,
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Comments:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            peopleCommentsBuilder(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Your Satisfaction:$satisfaction',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(children: [
              for (int i = 0; i < 5; i++) voteBuilder(i + 1),
            ]),
            SizedBox(
              height: 20,
            ),

            TextFormField(
              maxLength: 20,

              onFieldSubmitted: (value) {
                if(value!=null && value!=""){
                  MyApp.socket?.write("add to comments:${widget.data.title}:$value:$satisfaction\u0000");
                  MyApp.socket?.flush();
                  MyApp.stream?.listen((data) {
                    print(String.fromCharCodes(data));
                    if (String.fromCharCodes(data) == "added") {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Added to comments'),
                        ),
                      );
                    } else if(String.fromCharCodes(data) == "failed"){
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Sign in to add to comments'),
                        ),
                      );
                    }
                  });
                }
              },
              //TODO: add comment to server
              decoration: InputDecoration(
                labelText: "Add your comment",
                labelStyle: TextStyle(
                  fontSize: 17,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Row voteBuilder(int index) {
    return Row(
      children: [
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
            onPressed: () {
              //Todo: check to be logged in
              setState(() {
                satisfaction = index;
              });
            },
            icon: Icon(EvaIcons.starOutline),
            color: Colors.red,
          ),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }

  Container peopleCommentsBuilder() {
    return Container(
      width: double.infinity,
      height: 200,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: widget.data.comments?.keys.length,
            itemBuilder: (context, index) {
              var score = '';
              if (widget.data.comments?[
                      widget.data.comments?.keys.elementAt(index)]['score'] !=
                  "0") {
                score = widget.data.comments?[
                        widget.data.comments?.keys.elementAt(index)]['score'] +
                    '⭐\n';
              }
              return Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      shape: BoxShape.rectangle,
                      boxShadow: [
                        BoxShadow(
                          blurStyle: BlurStyle.outer,
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 5,
                    child: ListTile(
                      isThreeLine: true,
                      contentPadding: EdgeInsets.all(10),
                      title: Text(
                        widget.data.comments!.keys.elementAt(index),
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            score,
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            widget.data.comments?[widget.data.comments?.keys
                                .elementAt(index)]['view'],
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 40,
                  ),
                ],
              );
            }),
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
                  onPressed: () async {
                    if (MyApp.socket == null) {
                      MyApp.startConnection();
                    }

                  
                    MyApp.socket
                        ?.write("add to cart:${widget.data.title}\u0000");
                   await MyApp.socket?.flush();
                    MyApp.stream?.listen((event) {
                      print(String.fromCharCodes(event));
                      if (String.fromCharCodes(event) == "added") {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Added to Cart'),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Could not add to Cart'),
                          ),
                        );
                      }
                    });
                  },
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
          itemCount: widget.data.colors.length,
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
                  color: Color(int.parse(
                      widget.colorConvertor[widget.data.colors[index]])),
                ),
              )
            ]),
            Text(widget.data.colors.elementAt(index),
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
        itemCount: widget.data.image.length,
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
      height: 40,
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 3),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var borderColor = Colors.white24;
          if (selectedSize == index) {
            borderColor = Colors.orange;
          }
          return Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    selectedSize = index;
                  });
                },
                child: Container(
                  width: 40,
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
                  child: Text(widget.data.sizes[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 17,
                      )),
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          );
        },
        itemCount: widget.data.sizes.length,
      ),
    );
  }
}
