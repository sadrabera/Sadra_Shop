import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/details_page.dart';

class BuyPage extends StatelessWidget {
  String title;
  List data;

  BuyPage({Key? key, required this.title, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Goods> hereGoods = [
      Goods(
        title: data[0]['title'],
        image: data[0]['image'],
        description: data[0]['description'],
        price: data[0]['price'],
        rate: data[0]['rate'],
      ),
    ];
    for (int i = 1; i < data.length; i++) {
      hereGoods.add(
        Goods(
          title: data[i]['title'],
          image: data[i]['image'],
          description: data[i]['description'],
          price: data[i]['price'],
          rate: data[i]['rate'],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Sadra Shop'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: hereGoods.length,
              itemBuilder: (BuildContext context, int index) {
                String hereDescription = hereGoods[index].description;
                if (hereDescription.length>40)  {
                  hereDescription = hereDescription.substring(0,40)+'...';
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
                        hereGoods[index].image,
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
                            builder: (BuildContext context) => EveryGoodBuyPage(
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
                          onPressed: () {},
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
            ),
          ),
        ],
      ),
    );
  }
}

class Goods {
  String title;
  String price;
  String description;
  String image;
  String rate;

  Goods(
      {required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.rate});
}


