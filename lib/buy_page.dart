import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/details_page.dart';
import 'package:untitled/main.dart';
import 'package:untitled/purchase_page.dart';

import 'good.dart';

class BuyPage extends StatelessWidget {
  List<dynamic>? allDigitalGoods;

  String title;

  BuyPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Sadra Shop'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
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
      body: Builder(builder: (context) {
        return Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: disconnecting(),
                builder: ((context, snapshot) {
                  while (true) {
                    try {
                      List<Goods> hereGoods = [
                        Goods(
                          title: allDigitalGoods?[0]['title'],
                          image: allDigitalGoods?[0]['image'],
                          description: allDigitalGoods?[0]['description'],
                          price: allDigitalGoods?[0]['price'],
                          rate: allDigitalGoods?[0]['rate'],
                          owner: allDigitalGoods?[0]['owner'],
                          colors: allDigitalGoods?[0]['colors'],
                          sizes: allDigitalGoods?[0]['sizes'],
                          comments: allDigitalGoods?[0]['comments'],


                        ),
                      ];
                      for (int i = 1; i < allDigitalGoods!.length; i++) {
                        hereGoods.add(
                          Goods(
                            title: allDigitalGoods?[i]['title'],
                            image: allDigitalGoods?[i]['image'],
                            description: allDigitalGoods?[i]['description'],
                            price: allDigitalGoods?[i]['price'],
                            rate: allDigitalGoods?[i]['rate'],
                            owner: allDigitalGoods?[i]['owner'],
                            colors: allDigitalGoods?[i]['colors'],
                            sizes: allDigitalGoods?[i]['sizes'],
                            comments: allDigitalGoods?[i]['comments'],
                          ),
                        );
                      }
                      return ListView.builder(
                        itemCount: hereGoods.length,
                        itemBuilder: (BuildContext context, int index) {
                          String hereDescription = hereGoods[index].description;
                          if (hereDescription.length > 40) {
                            hereDescription =
                                hereDescription.substring(0, 40) + '...';
                          }
                          return Card(
                            color: Colors.white,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 5,
                            child: Column(children: [
                              ListTile(
                                title: Text(hereGoods[index].title),
                                subtitle: Text(hereDescription),
                                leading: Image.network(
                                  hereGoods[index].image[0],
                                  width: 100,
                                  height: 100,
                                ),
                                trailing: Column(children: [
                                  Text(
                                    hereGoods[index].price + "\$",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    hereGoods[index].rate + "⭐",
                                    style: const TextStyle(
                                      fontSize: 11,
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                ]),
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          EveryGoodBuyPage(
                                        data: hereGoods[index],
                                      ),
                                    ),
                                  );
                                },
                              ),
                              ButtonBar(
                                children: [
                                  TextButton(
                                    child: const Text('BUY',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          color: Colors.orange,
                                        )),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              EveryGoodBuyPage(
                                            data: hereGoods[index],
                                          ),
                                        ),
                                      );
                                    },
                                    style: TextButton.styleFrom(
                                      primary: Colors.orange,
                                    ),
                                  ),
                                  TextButton(
                                    child: const Text('ADD TO WishList',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          color: Colors.orange,
                                        )),
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      primary: Colors.orange,
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          );
                        },
                      );
                      break;
                    } catch (e) {
                      return Column(
                        children: [
                          SizedBox(height: 30),
                          Center(
                            child: CircularProgressIndicator(),
                          ),
                        ],
                      );
                    }
                  }
                }),
              ),
            ),
          ],
        );
      }),
    );
  }

  Future<void> disconnecting() async {
    if (MyApp.socket == null) {
      MyApp.startConnection();
    }
    while (true) {
      try {
        MyApp.socket?.write('get:$title\u0000');

        await MyApp.socket?.flush();
        break;
      } catch (e) {
        await MyApp.startConnection();
      }
    }
    MyApp.stream?.listen((event) {
      allDigitalGoods = json.decode(String.fromCharCodes(event));
      print(allDigitalGoods);
    });
  }
}


