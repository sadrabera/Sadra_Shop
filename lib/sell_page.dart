import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
import 'package:untitled/purchase_page.dart';

class SellPage extends StatefulWidget {
  bool? edit;
  String? title;

  SellPage({Key? key, this.edit,this.title}) : super(key: key);

  @override
  State<SellPage> createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  String _dropDownValue = 'Type';
  late TextEditingController _nameController;
  late TextEditingController _descriptionController;
  late TextEditingController _priceController;
  late TextEditingController _colorController;
  late TextEditingController _sizeController;
  late TextEditingController _imageController;
  late TextEditingController _quantityController;
  late TextEditingController _storeController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _descriptionController = TextEditingController();
    _priceController = TextEditingController();
    _colorController = TextEditingController();
    _sizeController = TextEditingController();
    _imageController = TextEditingController();
    _quantityController = TextEditingController();
    _storeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final _fromKey = GlobalKey<FormState>();
    var titleText = Text(
      'Add New Item',
    );
    var info = Text('New Item\'s Info');
    if (widget.edit ?? false) {
      titleText = Text(
        'Edit Item',
      );
      info = Text('Edit Item\'s Info',
          style: TextStyle(fontSize: 20, color: Colors.grey));
    }
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: titleText,
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
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              info,
              typePicker(),
              Form(
                  key: _fromKey,
                  child: Column(
                    children: [
                      Builder(
                        builder: (context) {
                          if(widget.edit??false){
                            return SizedBox(
                              height: 0,
                            );
                          }
                          return Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            child: TextFormField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                labelText: 'Name',
                                labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value == "") {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                          );
                        }
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: TextFormField(
                          controller: _storeController,
                          decoration: InputDecoration(
                            labelText: 'Store\'s Name',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            ),
                          ),
                          validator: (value) {

                            if (value == null || value == "") {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: TextFormField(
                          controller: _imageController,
                          decoration: InputDecoration(
                            helperText:
                                'Example: www.google.com www.amazon.com',
                            labelText: 'link to images, split with space',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            ),
                          ),
                          validator: (value) {

                            if (value == null || value == "") {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: TextFormField(
                          controller: _priceController,
                          decoration: InputDecoration(
                            labelText: 'Price',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            ),
                          ),
                          validator: (value) {

                            if (value == null || value == "") {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: TextFormField(
                          controller: _sizeController,
                          decoration: InputDecoration(
                            helperText: 'Example: M S XL',
                            labelText: 'Sizes, split with space',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            ),
                          ),
                          validator: (value) {

                            if (value == null || value == "") {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: TextFormField(
                          controller: _colorController,
                          decoration: InputDecoration(
                            helperText: 'Example: red blue green',
                            labelText: 'Colors, split with space',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            ),
                          ),
                          validator: (value) {

                            if (value == null || value == "") {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: TextFormField(
                          controller: _quantityController,
                          decoration: InputDecoration(
                            helperText: 'Example: 100',
                            labelText: 'Quantity',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            ),
                          ),
                          validator: (value) {


                            if (value == null || value == "") {
                              return 'Please enter some text';
                            }

                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: TextFormField(
                          controller: _descriptionController,
                          decoration: InputDecoration(
                            labelText: 'Description',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            ),
                          ),
                          validator: (value) {

                            if (value == null || value == "") {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    String name = _nameController.text;
                    if(widget.edit==true){name=widget.title!;}
                    String store = _storeController.text;
                    String image = _imageController.text;
                    String price = _priceController.text;
                    String size = _sizeController.text;
                    String color = _colorController.text;
                    String quantity = _quantityController.text;
                    String description = _descriptionController.text;
                    String storeName = _storeController.text;

                    if (_fromKey.currentState!.validate()) {

                      MyApp.socket?.write(
                          'addItem::::$_dropDownValue::::$name::::$image::::$price::::$size::::$color::::$quantity::::$storeName::::$description\u0000');
                    }
                    MyApp.socket?.flush();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Item added'),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                  child: Text('Submit'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(60, 70),
                    primary: Colors.orange,
                  ),
                ),
              ),
            ]),
          ),
        ));
  }

  Row typePicker() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Type:',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        SizedBox(
          width: 10,
        ),
        DropdownButton<String>(
          borderRadius: BorderRadius.circular(10),
          dropdownColor: Colors.white,
          hint: _dropDownValue == 'Type'
              ? Text('Type',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontFamily: 'GoogleSans-Medium',
                    fontWeight: FontWeight.bold,
                  ))
              : Text(
                  _dropDownValue,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Roboto',
                  ),
                ),
          iconSize: 24,
          elevation: 16,
          underline: Container(
            height: 2,
            color: Colors.orange,
          ),
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontFamily: 'GoogleSans-Medium',
            fontWeight: FontWeight.bold,
          ),
          items: [
            'Laptop',
            'Mobile',
            'TV',
            'Camera',
            'Men Fashion',
            'Women Fashion',
            'Women Shoes',
            'Men Shoes',
            "Kid Fashion",
            "Book",
            "Stationary",
            "Music",
            "Handicrafts",
            "Sport Clothes",
            "Sport Goods",
            "Camping Equipment",
          ].map(
            (val) {
              return DropdownMenuItem<String>(
                value: val,
                child: Text(val),
              );
            },
          ).toList(),
          onChanged: (val) {
            setState(
              () {
                _dropDownValue = val!;
              },
            );
          },
        ),
      ],
    );
  }
}
