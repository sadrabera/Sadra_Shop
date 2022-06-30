import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/main_page.dart';
import 'package:untitled/profile_page.dart';
import 'package:untitled/purchase_page.dart';

const port = 8080;
const host = '192.168.1.111';

void main() {
  MyApp.startConnection();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static Socket? socket;
  static Stream<Uint8List>? stream;

  static Future<void> startConnection() async {
    MyApp.socket = await Socket.connect(host, port);
    MyApp.stream = MyApp.socket!.asBroadcastStream();
  }

  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of my application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sadra Shop',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Sadra Shop'),
          actions: [
            loginBuilder(),
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
        body: MyMainPage(),
        bottomNavigationBar: BottomNavigatorForCartAndProfileAndHome(0),
      ),
    );
  }

  late TextEditingController _loginPhoneNumberController;
  late TextEditingController _loginPasswordController;
  late TextEditingController _registerPhoneNumberController;
  late TextEditingController _registerPasswordController;
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _placeController;

  @override
  initState() {
    super.initState();
    _loginPhoneNumberController = TextEditingController();
    _loginPasswordController = TextEditingController();
    _registerPhoneNumberController = TextEditingController();
    _registerPasswordController = TextEditingController();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _placeController = TextEditingController();
  }

  Builder loginBuilder() {
    var isLoggedIn = false;
    final _formKey = GlobalKey<FormState>();
    //all the login stuff
    bool isVisible = false;
    var hereIcon = Icon(Icons.visibility);
    return Builder(builder: (context) {
      return IconButton(
        icon: Icon(Icons.login),
        onPressed: () {
          showDialogForLogin(
              context, _formKey, isVisible, hereIcon, isLoggedIn);
        },
      );
    });
  }

  Future<dynamic> showDialogForLogin(
      BuildContext context,
      GlobalKey<FormState> _formKey,
      bool isVisible,
      Icon hereIcon,
      bool isLoggedIn) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.grey[200],
              elevation: 20,
              title: Text(
                "Login",
                style: TextStyle(color: Colors.blue),
              ),
              content: Container(
                height: 180,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _loginPhoneNumberController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your phone number';
                          }
                          RegExp regex = RegExp(
                              r"^(0|\+98)?([ ]|-|[()]){0,2}9[1|2|3|4]([ ]|-|[()]){0,2}(?:[0-9]([ ]|-|[()]){0,2}){8}");
                          if (regex.hasMatch(value)) {
                            return null;
                          }
                          return 'Please enter a valid phone number';
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone_android),
                          labelText: "Phone Number",
                          helperText: "For example: 09121234567",
                        ),
                      ),
                      TextFormField(
                        controller: _loginPasswordController,
                        obscureText: !isVisible,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length < 8) {
                            return 'Please enter your password';
                          }
                          RegExp regexSmall = RegExp(r"[a-z]");
                          RegExp regexCapitals = RegExp(r"[A-Z]");
                          if (!(regexCapitals.hasMatch(value) &&
                              regexSmall.hasMatch(value))) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            labelText: "Password",
                            suffixIcon: IconButton(
                                icon: hereIcon,
                                onPressed: () {
                                  setState(() {
                                    isVisible = !isVisible;
                                    if (isVisible) {
                                      hereIcon = Icon(Icons.visibility_off);
                                    } else {
                                      hereIcon = Icon(Icons.visibility);
                                    }
                                  });
                                })),
                      ),
                    ],
                  ),
                ),
              ),
              actions: [
                Center(
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          // Validate returns true if the form is valid, or false otherwise.
                          if (_formKey.currentState!.validate()) {
                            // If the form is valid, display a snackBar. In the real world,
                            // you'd often call a server or save the information in a database.
                            String phoneNumber =
                                _loginPhoneNumberController.text;
                            String password = _loginPasswordController.text;
                            if (MyApp.socket == null) {
                              MyApp.startConnection();
                            }
                            while (true) {
                              try {
                                MyApp.socket!.write(
                                  "login:$phoneNumber:$password\u0000",
                                );
                                await MyApp.socket?.flush();
                                break;
                              } catch (e) {
                                await MyApp.startConnection();
                              }
                            }
                            MyApp.stream!.listen((response) {
                              String responseString =
                                  String.fromCharCodes(response);
                              if (responseString == "login success") {
                                isLoggedIn = true;
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Login Successful')),
                                );
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => ProfilePage(),
                                  ),
                                );
                              } else if (responseString == "login failed") {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content:
                                        Text('Wrong phone number or password'),
                                  ),
                                );
                              }
                            });
                          }
                        },
                        child: Text("Login"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          signUpBuilder(context);
                        },
                        child: Text("You don't have account?"),
                      ),
                    ],
                  ),
                ),
              ],
            ));
  }

  Future<dynamic> signUpBuilder(BuildContext context) {
    //all sing up data will be here
    bool isVisible = false;
    final _fromKey = GlobalKey<FormState>();
    var hereIcon = Icon(Icons.visibility);

    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              scrollable: true,
              backgroundColor: Colors.grey[200],
              elevation: 20,
              title: Text(
                "Register",
                style: TextStyle(color: Colors.blue),
              ),
              content: Container(
                height: 420,
                child: Form(
                  key: _fromKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _nameController,
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
                        controller: _registerPhoneNumberController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your phone number';
                          }
                          RegExp regex = RegExp(
                              r"^(0|\+98)?([ ]|-|[()]){0,2}9[1|2|3|4]([ ]|-|[()]){0,2}(?:[0-9]([ ]|-|[()]){0,2}){8}");
                          if (regex.hasMatch(value)) {
                            return null;
                          }
                          return 'Please enter a valid phone number';
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone_android),
                          labelText: "Phone Number",
                          helperText: "For example: 09121234567",
                        ),
                      ),
                      TextFormField(
                        controller: _registerPasswordController,
                        obscureText: !isVisible,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length < 8) {
                            return 'Please must be at least 8 characters';
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
                                  isVisible = !isVisible;
                                  if (isVisible) {
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
                        controller: _emailController,
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
                          labelText: "Email",
                          helperText: "For example: test@gmail.com",
                        ),
                      ),
                      TextFormField(
                        controller: _placeController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.shop),
                          labelText: "Store Name",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              actions: [
                Column(
                  children: [
                    Center(
                      child: ElevatedButton(
                        onPressed: () async {
                          // Validate returns true if the form is valid, or false otherwise.
                          if (_fromKey.currentState!.validate()) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            String name = _nameController.text;
                            String phoneNumber =
                                _registerPhoneNumberController.text;
                            String password = _registerPasswordController.text;
                            String email = _emailController.text;
                            String place = _placeController.text;
                            while (true) {
                              try {
                                MyApp.socket!.write(
                                  'register:$name:$phoneNumber:$password:$email:$place\u0000',
                                );
                                await MyApp.socket?.flush();
                                break;
                              } catch (e) {
                                await MyApp.startConnection();
                              }
                            }
                            MyApp.stream!.listen((event) {
                              String responseString =
                                  String.fromCharCodes(event);
                              if (responseString == "register success") {
                                Navigator.of(context).pop();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text('Register Successful')),
                                );
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => ProfilePage(),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Register Failed')),
                                );
                              }
                            });
                          }
                        },
                        child: Text("Register"),
                      ),
                    ),
                    TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text("Cancel")),
                  ],
                ),
              ],
            ));
  }
}

class BottomNavigatorForCartAndProfileAndHome extends StatelessWidget {
  int state = 0;

  BottomNavigatorForCartAndProfileAndHome(
    this.state, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return BottomNavigationBar(
        currentIndex: state,
        backgroundColor: Colors.grey[200],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) async {
          if (index == 0) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MyApp(),
              ),
            );
          } else {

            if (index == 1 ) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PurchasePage(),
                ),
              );
            } else if (index == 2) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                ),
              );
            }
          }
        },
      );
    });
  }
}
