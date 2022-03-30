import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import './homePage.dart';
import '../data/data.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int activeTab = 0;

  get accent => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: getfooter(),
      body: getbody(),
      appBar: AppBar(
        title: new Center(
          child:
              //     Text(
              //   'захиалгаг',
              //   textAlign: TextAlign.end,
              // )
              Image(
            image: AssetImage('assets/ulguur1.png'),
            width: 70,
          ),
        ),
        elevation: 4.0,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(Icons.saved_search_rounded),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: null,
          )
        ],
        leading: Icon(Icons.qr_code_scanner),
      ),
    );
  }

  // Widget getAppbar() {
  //   return AppBar(
  //      title: new Center(
  //           child: Text(
  //         'захиалгагүй ресторанууд',
  //         textAlign: TextAlign.end,
  //       )),
  //       backgroundColor: Colors.green,
  //   );
  // }

  Widget getfooter() {
    return Container(
        height: 80,
        decoration: BoxDecoration(
            color: Colors.white,
            border:
                Border(top: BorderSide(color: Colors.grey.withOpacity(0.2)))),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(4, (index) {
              return IconButton(
                  icon: Icon(
                    itemtab[index]['icon'],
                    size: itemtab[index]['size'],
                    color: activeTab == index ? accent : Colors.blue,
                  ),
                  onPressed: () {
                    setState(() {
                      activeTab = index;
                    });
                  });
            }),
          ),
        ));
  }

  Widget getbody() {
    return IndexedStack(
      index: activeTab,
      children: [
        HomePage(),
        Center(
          child: Text("Home",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        Center(
          child: Text("Category",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
         Center(
          child: Text("Add",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
         Center(
          child: Text("Account",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}
