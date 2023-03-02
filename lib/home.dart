// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:packers/map.dart';
import 'package:packers/movehome.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Packers & Movers"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) => Maps())));
              },
              icon: Icon(Icons.location_on))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              width: 300,
              height: 50,
              child: Center(
                child: Text(
                  "Choose whether : ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: TextButton(
                      onPressed: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MoveHome()));
                      }),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      child: Center(
                        child: Text(
                          "Home",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: TextButton(
                      onPressed: (() {}),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      child: Center(
                        child: Text(
                          "Office",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
