// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';

class ItemList extends StatefulWidget {
  const ItemList({super.key});

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose from the list of items"),
      ),
      body: ListView.builder(
        itemCount: furniture.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            color: Colors.grey[600],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    furniture[index],
                    style: const TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.add_circle)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.remove_circle))
                ],
              ),
            ),
          ),
        ),
        padding: EdgeInsets.all(10),
      ),
    );
  }

  List<String> furniture = ['Chair', 'Table', 'Sofa', 'TV', 'Fridge'];
}
