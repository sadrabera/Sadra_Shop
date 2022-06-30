import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/profile_page.dart';

import 'main.dart';

class PurchasePage extends StatefulWidget {
  num sum = 0;

  @override
  State<PurchasePage> createState() => _PurchasePageState();
}

class _PurchasePageState extends State<PurchasePage> {
  List? userAddresses;

  Map? dataInCart;

  int selectedAddress = 0;
  late TextEditingController _controller ;

  @override
  void initState() {

    super.initState();
    _controller = TextEditingController();
    disconnecting();
  }

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
          child: FutureBuilder(
              future: disconnecting(),
              builder: (context, snapshot) {
                if (dataInCart != null) {
                  try {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListView.custom(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          semanticChildCount: dataInCart?.keys.toList().length,
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
                                          child: Image.network(dataInCart![
                                                  dataInCart?.keys
                                                      .elementAt(index)]
                                              ['image'][0])),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                              dataInCart!.keys
                                                  .toList()[index]
                                                  .toString(),
                                              style: TextStyle(
                                                fontStyle: FontStyle.italic,
                                              )),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "\$" +
                                                dataInCart![dataInCart?.keys
                                                            .toList()[index]]
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(Icons.add),
                                            color: Colors.green,
                                            onPressed: () {
                                              setState(() {
                                                dataInCart![dataInCart?.keys
                                                        .toList()[index]]
                                                    ['quantity']++;
                                                setState(()  {
                                                  List? list = dataInCart?.keys.toList();
                                                  widget.sum=0;
                                                  for (int i = 0; i < list!.length; i++) {
                                                    widget.sum = widget.sum + double.parse(dataInCart?[list[i]]["price"])*dataInCart?[list[i]]["quantity"];
                                                  }
                                                });
                                              });
                                            },
                                          ),
                                          Text(dataInCart![dataInCart?.keys
                                                  .toList()[index]]['quantity']
                                              .toString()),
                                          Builder(builder: (context) {
                                            var hereIcon = Icons.remove;
                                            if (dataInCart![dataInCart?.keys
                                                        .toList()[index]]
                                                    ['quantity'] ==
                                                1) hereIcon = Icons.delete;
                                            return IconButton(
                                              icon: Icon(hereIcon),
                                              color: Colors.red,
                                              onPressed: ()  {
                                                dataInCart![dataInCart?.keys
                                                    .toList()[index]]
                                                ['quantity']--;
                                                if (dataInCart![dataInCart
                                                    ?.keys
                                                    .toList()[index]]
                                                ['quantity'] ==
                                                    0) {
                                                  print("${dataInCart?.keys
                                                      .toList()[index]} removed");
                                                  MyApp.socket?.write("remove from cart:${dataInCart?.keys.toList()[index]}\u0000");
                                                  MyApp.socket?.flush();
                                                  dataInCart!.remove(
                                                      dataInCart?.keys
                                                          .toList()[index]);
                                                }
                                                setState(()  {
                                                  List? list = dataInCart?.keys.toList();
                                                  widget.sum=0;
                                                  for (int i = 0; i < list!.length; i++) {
                                                    widget.sum = widget.sum + double.parse(dataInCart?[list[i]]["price"])*dataInCart?[list[i]]["quantity"];
                                                  }
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
                            childCount: dataInCart?.keys.toList().length,
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
                            itemCount: userAddresses?.length,
                            itemBuilder: (context, index) {
                              var hereColor = Colors.grey;
                              if (index == selectedAddress)
                                hereColor = Colors.blue;
                              return Card(
                                child: ListTile(
                                  title: Text(userAddresses?[index]),
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
                        TextFormField(
                          controller: _controller,
                          validator: (value) {
                            if (value == null || value.isEmpty||value=="") {
                              return 'Please enter some text';
                            }
                            return null;
                          },

                          decoration: InputDecoration(
                            label: Text('Enter your address'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onFieldSubmitted: (value) {
                            setState(() {
                              if(value!=null&& value.isNotEmpty&&value!=""){
                                userAddresses ??= [];
                                userAddresses?.add(value);
                                selectedAddress = (userAddresses!.length - 1);
                                MyApp.socket?.write("add address:$value\u0000");
                                MyApp.socket?.flush();
                              }
                            });
                          },
                        ),
                      ],
                    );
                  } catch (e) {
                    print(e);
                    return Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          CircularProgressIndicator(),
                        ],
                      ),
                    );
                  }
                } else {
                  return Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        CircularProgressIndicator(),
                      ],
                    ),
                  );
                }
              }),
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
                            '\$' + widget.sum.toString(),
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
                    onPressed: () {
                      if (userAddresses?.length == 0) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Please add an address'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      } else {
                        showDialog( context: context, builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Confirm order'),
                            content: Text('Are you sure you want to order?'),
                            actions: [
                              TextButton(
                                child: Text('Cancel'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              TextButton(
                                child: Text('Confirm'),
                                onPressed: () {
                                  Navigator.pop(context);
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    content: Text('You have ordered'),
                                    duration: Duration(seconds: 2),
                                  ));
                                  MyApp.socket?.write("order\u0000");
                                  MyApp.socket?.flush();
                                  setState(() {

                                  });


                                },
                              ),
                            ],
                          );
                        });
                      }
                    },
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

  Future<bool> disconnecting() async {
    MyApp.socket?.write('get cart\u0000');

    await MyApp.socket?.flush();

    MyApp.stream?.listen((event) {
      Map allOfUserData = json.decode(String.fromCharCodes(event));
      print(userAddresses);
      userAddresses = allOfUserData["address"];
      var temp = dataInCart;
      dataInCart = allOfUserData["cartGoods"]["goods"];
      for (int i = 0; i < dataInCart!.keys.length; i++) {
        dataInCart?[dataInCart?.keys.toList().elementAt(i)]["quantity"] =
            temp?[temp.keys.toList().elementAt(i)]["quantity"] ?? 1;
      }

    });


    return true;
  }
}
