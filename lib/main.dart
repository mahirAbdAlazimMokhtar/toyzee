import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'screen/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // bottomNavigationBar: ,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.gamepad,
                color: Colors.lightBlue,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'ToyZee',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                ),
              )
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ))
          ],
        ),
        drawer: Drawer(),
        body: HomePage(),

        bottomNavigationBar: CurvedNavigationBar(
          buttonBackgroundColor: Colors.lightBlue,

          color: Colors.white,
          backgroundColor: Colors.blueAccent,
          animationCurve: Curves.easeIn,
          animationDuration: Duration(milliseconds: 600),
          items: [
          Icon(Icons.home),
          Icon(Icons.favorite_rounded),
          Icon(Icons.search_sharp),
          Icon(Icons.add),
        ],),
      ),
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          inputDecorationTheme: InputDecorationTheme(
              //this for give color
              fillColor: Color(0xfff2f9fc),
              filled: true,
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  )),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(25),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    25,
                  ),
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                  ))),

      ),
    );
  }
}
