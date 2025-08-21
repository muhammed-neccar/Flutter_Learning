// ignore_for_file: file_names

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';

// ignore: camel_case_types
class homPage extends StatefulWidget {
  const homPage({super.key});

  @override
  State<homPage> createState() => _homPageState();
}

// ignore: camel_case_types
class _homPageState extends State<homPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hint: Text("search"),
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.menu, size: 40),
                ),
              ],
            ),

            Container(
              width: 500,
              height: 85,
              padding: EdgeInsets.only(left: 10, top: 40, bottom: 0),
              child: Text(
                "Categories",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),

                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(40),
                          ),

                          child: Icon(Icons.laptop, size: 40),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "Laptop",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),

                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(40),
                          ),

                          child: Icon(Icons.phone_android, size: 40),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "Mobile",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),

                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(40),
                          ),

                          child: Icon(Icons.watch, size: 40),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "Watch",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),

                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(40),
                          ),

                          child: Icon(Icons.monitor, size: 40),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "Monitor",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),

                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(40),
                          ),

                          child: Icon(Icons.card_giftcard, size: 40),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "Gifts",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),

                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(40),
                          ),

                          child: Icon(Icons.bike_scooter, size: 40),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "Bike",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 500,
              height: 85,
              padding: EdgeInsets.only(left: 10, top: 40, bottom: 0),
              child: Text(
                "Categories",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            GridView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              children: [
                Card(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.grey[200],
                        child: Image.asset("images/android.png"),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.grey[200],
                        child: Image.asset("images/android.png"),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.grey[200],
                        child: Image.asset("images/android.png"),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.grey[200],
                        child: Image.asset("images/android.png"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
