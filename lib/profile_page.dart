import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
import 'package:untitled/purchase_page.dart';
import 'package:untitled/sell_page.dart';

List fakeData2 = [
  {
    'name': 'Samsung',
    'price': '\$1,000',
    'image':
        'https://oasis.opstatics.com/content/dam/oasis/page/2022/na/home/10pro-video/10provideo-mo.jpg',
    'Color': 'Black',
  },
  {
    'name': 'Huawei',
    'price': '\$2,000',
    'image':
        "https://oasis.opstatics.com/content/dam/oasis/page/2022/na/home/10pro-video/10provideo-mo.jpg",
    'Color': 'white',
  },
  {
    'name': 'Xiaomi',
    'price': '\$3,000',
    'image':
        "https://oasis.opstatics.com/content/dam/oasis/page/2022/na/home/10pro-video/10provideo-mo.jpg",
    'Color': 'Black',
  },
  {
    'name': 'OnePlus',
    'price': '\$1,000',
    'image':
        "https://oasis.opstatics.com/content/dam/oasis/page/2022/na/home/10pro-video/10provideo-mo.jpg",
    'Color': 'Black',
  },
  {
    'name': 'Apple',
    'price': '\$2,000',
    'image':
        "https://oasis.opstatics.com/content/dam/oasis/page/2022/na/home/10pro-video/10provideo-mo.jpg",
    'Color': 'white',
  },
  {
    'name': 'Nokia',
    'price': '\$3,000',
    'image':
        'https://oasis.opstatics.com/content/dam/oasis/page/2022/na/home/10pro-video/10provideo-mo.jpg',
    'Color': 'Black',
  },
];
List fakeData3 = [
  {
    'name': 'Boys T-Shirt',
    'price': '\$1,000',
    'image':
        'https://static.euronews.com/articles/stories/06/48/94/10/1440x810_cmsv2_72145961-5fb7-5e54-852d-997299cf9e10-6489410.jpg',
    'Color': 'Black',
  },
  {
    'name': 'Girls T-Shirt ',
    'price': '\$2,000',
    'image':
        "https://static.euronews.com/articles/stories/06/48/94/10/1440x810_cmsv2_72145961-5fb7-5e54-852d-997299cf9e10-6489410.jpg",
    'Color': 'white',
  },
  {
    'name': 'Kids T-Shirt',
    'price': '\$3,000',
    'image':
        "https://static.euronews.com/articles/stories/06/48/94/10/1440x810_cmsv2_72145961-5fb7-5e54-852d-997299cf9e10-6489410.jpg",
    'Color': 'Black',
  },
];

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List fakeData = [
    {
      'name': 'DELL',
      'price': '\$1,000',
      'image':
          'https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png',
      'Color': 'Black',
    },
    {
      'name': 'HP',
      'price': '\$2,000',
      'image':
          "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
      'Color': 'white',
    },
    {
      'name': 'ASUS',
      'price': '\$3,000',
      'image':
          "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
      'Color': 'Black',
    },
    {
      'name': 'DELL',
      'price': '\$1,000',
      'image':
          "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
      'Color': 'Black',
    },
    {
      'name': 'HP',
      'price': '\$2,000',
      'image':
          "https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png",
      'Color': 'white',
    },
    {
      'name': 'ASUS',
      'price': '\$3,000',
      'image':
          'https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png',
      'Color': 'Black',
    },
    {
      'name': 'DELL',
      'price': '\$1,000',
      'image':
          'https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png',
      'Color': 'Black',
    },
    {
      'name': 'HP',
      'price': '\$2,000',
      'image':
          'https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png',
      'Color': 'white',
    },
    {
      'name': 'ASUS',
      'price': '\$3,000',
      'image':
          'https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png',
      'Color': 'Black',
    },
    {
      'name': 'DELL',
      'price': '\$1,000',
      'image':
          'https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png',
      'Color': 'Black',
    },
    {
      'name': 'HP',
      'price': '\$2,000',
      'image':
          'https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MzI1MTkwfGltYWdlL3BuZ3xoZTQvaGU3LzExMDMzODkwMzU3Mjc4LnBuZ3wwZWQzZWU4OTAxNDI0NGM2ODVhMTc4MGU0MzA0ZDQyZWFkYjBmNjY5OGUwMjM4ZjU5OWVmZTE2NTEzYzU1YTQ3/lenovo-laptop-workstation-thinkpad-p15-15-subseries-hero.png',
      'Color': 'white',
    },
  ];

  @override
  Widget build(BuildContext context) {
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
          child: Column(
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
                    Text('Name and surname'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('09122454654',
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
              favoriteBuilder(fakeData),
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
              favoriteBuilder(fakeData2),
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
                    itemCount: fakeData.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          leading: Image.network(fakeData[index]['image']),
                          title: Text(fakeData[index]['name']),
                          subtitle: Text(fakeData[index]['price']),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                color: Colors.brown,
                                icon: Icon(Icons.edit),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => SellPage(
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
                                    fakeData.removeAt(index);
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
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigatorForCartAndProfileAndHome(2),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {
          signUpBuilder(context);
        },
        child: Icon(Icons.edit, color: Colors.white),
      ),
    );
  }

  Future<dynamic> signUpBuilder(BuildContext context) {
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: "Name and Surname",
                      ),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your phone number';
                        }
                        RegExp regex = RegExp(
                            r'^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$');
                        if (regex.hasMatch(value)) {
                          return null;
                        }
                        return 'Please enter a valid phone number';
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone_android),
                        labelText: "Phone Number",
                      ),
                    ),
                    TextFormField(
                      obscureText: !isVisiable,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
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
                        labelText: "Password",
                      ),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        labelText: "Email",
                      ),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Store name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.shop),
                        labelText: "Store Name",
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                Center(
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Submit"),
                      ),
                      SizedBox(
                        height: 10,
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
