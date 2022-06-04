import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class PurchasePage extends StatefulWidget {
  @override
  State<PurchasePage> createState() => _PurchasePageState();
}

class _PurchasePageState extends State<PurchasePage> {
  List fakeAddresses = [
    "Ms Alice Smith Apartment 1c 213 Derrick Street Boston, MA 02130 USA",
    'Mr Bob Smith Apartment 2f 112 Manhattan Street New York, NY 10001 USA',
  ];
  Map fakeData = {
    "Lenovo Laptop": {
      "image": "assets/images/laptop.jpg",
      "price": 2000,
      "quantity": 1,
    },
    "Samsung Mobile": {
      "image": "assets/images/mobile.jpg",
      "price": 1500,
      "quantity": 1,
    },
    "Samsung TV": {
      "image": "assets/images/tv.jpg",
      "price": 2500,
      "quantity": 1,
    },
    "Sony Camera": {
      "image": "assets/images/camera.jpg",
      "price": 1000,
      "quantity": 1,
    },
  };
  int selectedAddress = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Cart'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.custom(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(vertical: 10),
                semanticChildCount: fakeData.keys.toList().length,
                childrenDelegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      height: 100,
                      child: Card(
                        color: Colors.white,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                                width: 100,
                                height: 100,
                                child: Image.asset(
                                    fakeData[fakeData.keys.toList()[index]]
                                        ['image'])),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(fakeData.keys.toList()[index].toString(),
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "\$" +
                                      fakeData[fakeData.keys.toList()[index]]
                                              ['price']
                                          .toString(),
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.add),
                                  color: Colors.green,
                                  onPressed: () {
                                    setState(() {
                                      fakeData[fakeData.keys.toList()[index]]
                                          ['quantity']++;
                                    });
                                  },
                                ),
                                Text(fakeData[fakeData.keys.toList()[index]]
                                        ['quantity']
                                    .toString()),
                                Builder(builder: (context) {
                                  var hereIcon = Icons.remove;
                                  if (fakeData[fakeData.keys.toList()[index]]
                                          ['quantity'] ==
                                      1) hereIcon = Icons.delete;
                                  return IconButton(
                                    icon: Icon(hereIcon),
                                    color: Colors.red,
                                    onPressed: () {
                                      setState(() {
                                        fakeData[fakeData.keys.toList()[index]]
                                            ['quantity']--;
                                        if (fakeData[fakeData.keys
                                                .toList()[index]]['quantity'] ==
                                            0)
                                          fakeData.remove(
                                              fakeData.keys.toList()[index]);
                                      });
                                    },
                                  );
                                }),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  childCount: fakeData.keys.toList().length,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //Send locations.
              Text(
                'Send to:',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: fakeAddresses.length,
                  itemBuilder: (context, index) {
                    var hereColor = Colors.grey;
                    if (index == selectedAddress) hereColor = Colors.blue;
                    return Card(
                      child: ListTile(
                        title: Text(fakeAddresses[index]),
                        trailing: IconButton(
                          icon: Icon(Icons.circle_outlined),
                          color: hereColor,
                          onPressed: () {
                            setState(() {
                              selectedAddress = index;
                            });
                          },
                        ),
                      ),
                    );
                  }),
              SizedBox(
                height: 20,
              ),

              Text('Or add new address:',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  )),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  label: Text('Enter your address'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onSubmitted: (value) {
                  setState(() {
                    fakeAddresses.add(value);
                  });
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigatorBottemBuilder(),
    );
  }

  Container NavigatorBottemBuilder() {
    return Container(
      height: 156,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  width: 100,
                  height: 100,
                  child: Builder(builder: (context) {
                    num sum = 0;
                    List list = fakeData.keys.toList();
                    for (int i = 0; i < list.length; i++) {
                      sum = sum + fakeData[list[i]]["price"];
                    }

                    return Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sum of all items:',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            '\$' + sum.toString(),
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  }),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: Size(100, 60),
                    ),
                    child: Text('Continue the buying process'),
                  ),
                ),
              ],
            ),
          ),
          BottomNavigatorForCartAndProfileAndHome(1),
        ],
      ),
    );
  }
}
