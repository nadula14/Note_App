import 'package:flutter/material.dart';

class Shop{
  String name;
  double price;
  String quantity;

  Shop({required this.name,required this.price,required this.quantity});
}

class ChildPage extends StatelessWidget {
  List<Shop> shop = [
  Shop(name: "Milk", price: 50, quantity: "1kg"),
  Shop(name: "Sugar", price:100, quantity: "30kg"),
  Shop(name: "Butter", price: 200, quantity: "20kg")
  ];
  ChildPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text("Products",
        style: TextStyle(
          color: Colors.white
        ),
        ),
        backgroundColor:Color.fromARGB(200,62,54,46) ,
      ) ,
      body: ListView.builder(
        itemCount:shop.length,
        itemBuilder: (context, index) => Card(

           shadowColor: Colors.green,
           color: Color.fromARGB(255, 172, 134, 104),
           child: ListTile(
             title:Text(shop[index].name),
             subtitle:Text(shop[index].quantity),
             trailing:Text('${shop[index].price}') ,

          ),
        ),

        ),

    );
  }
}


