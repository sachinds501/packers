// ignore_for_file: file_names, prefer_const_constructors

import 'package:packers/itemlist.dart';
import 'package:flutter/material.dart';
import 'package:packers/movehome.dart';
import 'package:packers/takephoto.dart';

class LivingRoom extends StatefulWidget {
  const LivingRoom({super.key});

  @override
  State<LivingRoom> createState() => _LivingRoomState();
}

class _LivingRoomState extends State<LivingRoom> {
  List<String> furniture = ['Chair', 'Table', 'Sofa', 'TV', 'Fridge'];
  List<IconData> icons = [
    Icons.chair,
    Icons.table_bar,
    Icons.bed,
    Icons.tv,
    Icons.food_bank
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Living Room"),
        actions: [
          IconButton(
            icon: Icon(Icons.camera),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => TakePhoto())));
            },
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            children: [
              SizedBox(width: 350, child: Image.asset('assets/images/lr.jpg')),
              GridView.builder(
                itemCount: furniture.length,
                physics: ScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.all(20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 20.0,
                    mainAxisExtent: 120),
                itemBuilder: (context, index) => Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: IconButton(
                        iconSize: 40,
                        color: Colors.black,
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ItemList()));
                        }),
                        icon: Icon(
                          icons[index],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(furniture[index])
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
