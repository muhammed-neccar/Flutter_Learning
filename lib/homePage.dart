// ignore_for_file: file_names

import 'package:first_app/details.dart';
import 'package:flutter/material.dart';

class homPage extends StatefulWidget {
  @override
  State<homPage> createState() => _homPageState();
}

class _homPageState extends State<homPage> {
  List categories = [
    {"iconName": Icons.laptop, "Title": "Laptop"},
    {"iconName": Icons.phone_android, "Title": "Phone"},
    {"iconName": Icons.pedal_bike, "Title": "Bike"},
    {"iconName": Icons.electric_car, "Title": "Cars"},
    {"iconName": Icons.watch_rounded, "Title": "Watch"},
    {"iconName": Icons.monitor, "Title": "Monitor"},
  ];

  List product = [
    {
      "image": "images/android.png",
      "Title": "S26 Ultra",
      "subTitle": "Description 1 and",
      "price": "760\$",
    },
    {
      "image": "images/watch.png",
      "Title": "Huawei Watch",
      "subTitle": "Description 1 and",
      "price": "200\$",
    },
    {
      "image": "images/iphone.png",
      "Title": "iphone 15 Pro",
      "subTitle": "Description 1 and",
      "price": "1000\$",
    },
    {
      "image": "images/watch2.png",
      "Title": "Watch 2 ",
      "subTitle": "Description 1 and",
      "price": "100\$",
    },

    {
      "image": "images/watch.png",
      "Title": "Huawei Watch",
      "subTitle": "Description 1 and",
      "price": "200\$",
    },
    {
      "image": "images/iphone.png",
      "Title": "iphone 15 Pro",
      "subTitle": "Description 1 and",
      "price": "1000\$",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedItemColor: Colors.orangeAccent,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "*"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "*",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "*",
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.orangeAccent[200],
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, size: 30),
                      hintText: "Search",

                      hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(Icons.menu, size: 40),
                ),
              ],
            ),
            SizedBox(height: 35),
            Text(
              "Cataegories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(categories[i]["iconName"], size: 35),
                          padding: EdgeInsets.all(15),
                        ),
                        Text(
                          categories[i]["Title"],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Text(
              "Best Selling",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent:
                    250, // ارتفاع البطاقة الآن أكبر لتناسب الصور والنص
              ),
              itemCount: product.length,
              itemBuilder: (context, i) {
                return InkWell(
                  onTap:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ItemsDetails(data:product[i])));
                  } ,
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 130, // نفس ارتفاع الصورة
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(
                            product[i]['image'],
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          product[i]["Title"],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const Divider(
                          thickness: 1, // سمك الخط
                          color: Colors.grey, // لون الخط
                          indent: 20, // مسافة من اليسار
                          endIndent: 20, // مسافة من اليمين
                        ),
                        Text(
                          product[i]["subTitle"],
                  
                          style: TextStyle(color: Colors.grey),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            product[i]["price"],
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
