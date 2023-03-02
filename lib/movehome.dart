// ignore_for_file: file_names, prefer_const_constructors

import 'package:packers/itemlist.dart';
import 'package:flutter/material.dart';
import 'package:packers/livingroom.dart';

class MoveHome extends StatefulWidget {
  const MoveHome({super.key});

  @override
  State<MoveHome> createState() => _MoveHomeState();
}

class _MoveHomeState extends State<MoveHome> {
  List<String> rooms = [
    'Add room',
    'Dining room',
    'Living room',
    'Bedroom',
    'Kitchen'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Move Home"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            children: [
              GridView.builder(
                itemCount: rooms.length,
                itemBuilder: (context, index) => TextButton(
                  onPressed: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LivingRoom()));
                  }),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.teal,
                  ),
                  child: Text(
                    rooms[index],
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                physics: ScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.all(20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 15.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
