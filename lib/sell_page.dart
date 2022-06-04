import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/purchase_page.dart';

class SellPage extends StatefulWidget {
  bool? edit;

  SellPage({Key? key, this.edit}) : super(key: key);

  @override
  State<SellPage> createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  String _dropDownValue = 'Type';

  @override
  Widget build(BuildContext context) {
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                  onSubmitted: (value) {
                    print(value);
                  }, //Todo use this to get the name of the item
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Store\'s Name',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                  onSubmitted: (value) {
                    print(value);
                  }, //Todo use this to get the name of the item
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                    ),
                    onPressed: () {},
                    child: Text('Add Image')),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Price',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ), //TODo use validator to check if the price is a number
                  onSubmitted: (value) {
                    print(value);
                  }, //Todo use this to get the name of the item
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Color And Size And Number:',
                  style: TextStyle(fontSize: 20, color: Colors.black)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    helperText: 'Example red:XL:10 blue:L:5',
                    labelText: 'Color and size and number',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ), //TODo use validator to check if the price is a number
                  onSubmitted: (value) {
                    print(value);
                  }, //Todo use this to get the name of the item
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Description',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ), //TODo use validator to check if the price is a number
                  onSubmitted: (value) {
                    print(value);
                  }, //Todo use this to get the name of the item
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
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
            'Digitals',
            'Fashions',
            'Books and stationary',
            'Sport and trip'
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
