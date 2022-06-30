import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/details_page.dart';
import 'package:untitled/main.dart';
import 'package:untitled/purchase_page.dart';

import 'good.dart';

class BuyPage extends StatelessWidget {
  Map<String, dynamic> allDigitalGoods={};

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
                      String temp=allDigitalGoods.keys.elementAt(0);
                      List<Goods> hereGoods = [
                        Goods(
                          title: allDigitalGoods[temp]['title'],
                          image: allDigitalGoods[temp]['image'],
                          description: allDigitalGoods[temp]['description'],
                          price: allDigitalGoods[temp]['price'],
                          rate: allDigitalGoods[temp]['rate'],
                          owner: allDigitalGoods[temp]['owner'],
                          colors: allDigitalGoods[temp]['Colors'],
                          sizes: allDigitalGoods[temp]['Sizes'],
                          comments: allDigitalGoods[temp]['comments'],
                          ownerNickName: allDigitalGoods[temp]['ownerNickname'],

                        ),
                      ];
                      for (int i = 1; i < allDigitalGoods.keys.length; i++) {
                        String temp=allDigitalGoods.keys.elementAt(i);
                        hereGoods.add(
                          Goods(
                            title: allDigitalGoods[temp]['title'],
                            image: allDigitalGoods[temp]['image'],
                            description: allDigitalGoods[temp]['description'],
                            price: allDigitalGoods[temp]['price'],
                            rate: allDigitalGoods[temp]['rate'],
                            owner: allDigitalGoods[temp]['owner'],
                            colors: allDigitalGoods[temp]['colors'],
                            sizes: allDigitalGoods[temp]['sizes'],
                            comments: allDigitalGoods[temp]['comments'],
                            ownerNickName: allDigitalGoods[temp]['ownerNickName'],
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
                                //ToDo add to whishlist deleted
                                ],
                              ),
                            ]),
                          );
                        },
                      );
                      break;
                    }  catch (e,s) {
                      print(e);
                      print(s);
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
        MyApp.socket?.write('get goods:$title\u0000');

         MyApp.socket?.flush();
        break;
      } catch (e) {
        await MyApp.startConnection();
      }
    }
    MyApp.stream?.listen((event) {
      print(String.fromCharCodes(event));
      allDigitalGoods = json.decode(String.fromCharCodes(event));
    });

  }
}


