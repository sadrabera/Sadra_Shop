import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
import 'package:untitled/purchase_page.dart';
import 'package:untitled/sell_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Map<String, dynamic> allData = {};

  @override
  Widget build(BuildContext context) {
    if (MyApp.socket == null) {
      MyApp.startConnection();
    }
    MyApp.socket?.write('profile\u0000');
    MyApp.socket?.flush();
    MyApp.stream!.listen((event) {
      print(String.fromCharCodes(event));
      allData = jsonDecode(String.fromCharCodes(event));
    });


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Sadra Shop'),
        actions: [
          Builder(builder: (context) {
            return IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PurchasePage(),
                  ),
                );
              },
            );
          }),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: FutureBuilder(
            future: Future.delayed(
              Duration(milliseconds: 1000),
              () => allData,
            ),
            builder: (context, snapshot) {
              try {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 30),
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://i.pinimg.com/originals/d9/56/9b/d9569bbed4393e2ceb1af7ba64fdf86a.jpg'),
                            radius: 50,
                          ),
                          SizedBox(height: 30),

                          Builder(
                              builder: (context) {
                                return Text(allData['username']);
                              }
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(allData['phoneNumber'],
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Text(allData['email'],
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Your Favorite Products:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Search in favorite products',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    favoriteBuilder(
                        allData['likedGoods']['goods'].values.toList()),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Completed Orders :',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Search in completed orders',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    favoriteBuilder(
                        allData['completedOrders']['goods'].values.toList()),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Your Products :',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 250,
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount:
                          allData['ownedGoods']['goods'].values
                              .toList()
                              .length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: ListTile(
                                leading: Image.network(
                                    allData['ownedGoods']['goods']
                                        .values
                                        .toList()[index]['image']),
                                title: Text(allData['ownedGoods']['goods']
                                    .values
                                    .toList()[index]['name']),
                                subtitle: Text(allData['ownedGoods']['goods']
                                    .values
                                    .toList()[index]['price']),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      color: Colors.brown,
                                      icon: Icon(Icons.edit),
                                      onPressed: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                SellPage(
                                                  edit: true,
                                                ),
                                          ),
                                        );
                                      },
                                    ),
                                    IconButton(
                                      color: Colors.red,
                                      icon: Icon(Icons.delete),
                                      onPressed: () {
                                        setState(() {
                                          var temp = allData['ownedGoods']['goods']
                                              .values
                                              .toList()
                                              .get(index);
                                          allData['ownedGoods']['goods'].remove(
                                              temp);
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SellPage(),
                          ),
                        );
                      },
                      child: Text('Add to Your Products'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange,
                      ),
                    ),
                  ],
                );
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
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigatorForCartAndProfileAndHome(2),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {
          editBuilder(context);
        },
        child: Icon(Icons.edit, color: Colors.white),
      ),
    );
  }

  late TextEditingController _editNameController;

  late TextEditingController _editPasswordController;

  late TextEditingController _editEmailController;

  late TextEditingController _editStoreController;

  @override
  initState() {
    super.initState();
    _editNameController = TextEditingController();
    _editPasswordController = TextEditingController();
    _editEmailController = TextEditingController();
    _editStoreController = TextEditingController();
  }

  Future<dynamic> editBuilder(BuildContext context) {
    bool isVisiable = false;
    var hereIcon = Icon(Icons.visibility);

    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.grey[200],
              elevation: 20,
              title: Text(
                "Edit Your Profile",
                style: TextStyle(color: Colors.blue),
              ),
              content: Container(
                height: 300,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _editNameController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: "Edit Name and Surname",
                      ),
                    ),
                    TextFormField(
                      controller: _editPasswordController,
                      obscureText: !isVisiable,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return null;
                        }
                        if (value.length < 8) {
                          return 'Please enter valid password';
                        }
                        RegExp regexSmall = RegExp(r"[a-z]");
                        RegExp regexCapitals = RegExp(r"[A-Z]");
                        if (!(regexCapitals.hasMatch(value) &&
                            regexSmall.hasMatch(value))) {
                          return 'Password must contains at least\n one capital letter and one small letter';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            icon: hereIcon,
                            onPressed: () {
                              setState(() {
                                isVisiable = !isVisiable;
                                if (isVisiable) {
                                  hereIcon = Icon(Icons.visibility_off);
                                } else {
                                  hereIcon = Icon(Icons.visibility);
                                }
                              });
                            }),
                        prefixIcon: Icon(Icons.lock),
                        labelText: "Edit Password",
                      ),
                    ),
                    TextFormField(
                      controller: _editEmailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return null;
                        }
                        RegExp emailRegex = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                        if (emailRegex.hasMatch(value)) {
                          return null;
                        }
                        return 'please enter a valid email';
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        labelText: "Edit Email",
                      ),
                    ),
                    TextFormField(
                      controller: _editStoreController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.shop),
                        labelText: "Edit Store Name",
                      ),
                    ),
                  ],
                ),
              ),
              scrollable: true,
              actions: [
                Center(
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          String name = _editNameController.text;
                          String password = _editPasswordController.text;
                          String email = _editEmailController.text;
                          String store = _editStoreController.text;
                          if (MyApp.socket == null) {
                            MyApp.startConnection();
                          }

                          MyApp.socket!.write(
                              'edit:$name:$password:$email:$store\u0000');
                          MyApp.socket!.flush();
                          MyApp.stream!.listen((event) {
                            if (String.fromCharCodes(event) == 'edit success') {
                              print('success');
                              Navigator.of(context).pop();
                              const SnackBar(content: Text('Edit Successful'));
                            }
                          });
                        },
                        child: Text("Submit"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Cancel"),
                      ),
                    ],
                  ),
                ),
              ],
            ));
  }
}

Container favoriteBuilder(List fakeData, {bool isYourProduct = false}) {
  return Container(
    height: 250,
    child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: fakeData.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.network(fakeData[index]['image']),
              title: Text(fakeData[index]['name']),
              subtitle: Text(fakeData[index]['price']),
              trailing: Text(fakeData[index]['Color']),
            ),
          );
        }),
  );
}
