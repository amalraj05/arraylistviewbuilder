import 'package:flutter/material.dart';

class builder extends StatefulWidget {
  const builder({super.key});

  @override
  State<builder> createState() => _builderState();
}

class _builderState extends State<builder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "FOOD LIST",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: food.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.green,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(food[index]),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(price[index]),
                ),
              ),
            );
          },
        ),
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      ),
    );
  }
}

final List food = ["Donut", "Pizza", "Cupcake", "GingerBread", "JellyBean"];
List price = [
  "Price : 13",
  "Price : 12",
  "Price : 10",
  "Price : 10",
  "Price : 15"
];
