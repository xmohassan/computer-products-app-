// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:computer_products_app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/tech.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  accountName: Text("Mohamed Hassan",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      )),
                  accountEmail: Text("mohamedhassan@gmail.com"),
                  currentAccountPictureSize: Size.square(85),
                  currentAccountPicture: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets/img/light.jpg")),
                ),
                ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home),
                    onTap: () {}),
                ListTile(
                    title: Text("My products"),
                    leading: Icon(Icons.add_shopping_cart),
                    onTap: () {}),
                ListTile(
                    title: Text("About"),
                    leading: Icon(Icons.help_center),
                    onTap: () {}),
                ListTile(
                    title: Text("Logout"),
                    leading: Icon(Icons.exit_to_app),
                    onTap: () {}),
              ],
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(16),
              child: Text("Developed by Mohamed Hassan © 2024"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: BTNBlue,
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Positioned(
                    bottom: 20,
                    child: Container(
                        child: Text(
                          "0",
                          style: TextStyle(color: BTNBlue),
                        ),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: BTNgreen, shape: BoxShape.circle)),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_shopping_cart_outlined),
                    style: ButtonStyle(
                        iconColor: MaterialStateProperty.all(Colors.white)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: Text(
                  "\$ 0.00",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
