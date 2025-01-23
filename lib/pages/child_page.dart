import 'package:flutter/material.dart';

class Product {
  String name;
  double price;
  String quantity;
  
  Product({required this.name,required this.price,required this.quantity});
}

class ChildPage extends StatelessWidget {
  List<Product> products = [
  Product(name: "Milk", price: 50, quantity: "1kg"),
  Product(name: "Sugar", price:100, quantity: "30kg"),
  Product(name: "Butter", price: 200, quantity: "20kg")
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
        itemCount:products.length,
        itemBuilder: (context, index) => Card(
                    
           shadowColor: Colors.green,
           color: Color.fromARGB(255, 172, 134, 104),
           child: ListTile(
             title:Text(products[index].name),
             subtitle:Text(products[index].quantity),
             trailing:Text('${products[index].price}') ,
          
          ),
        ),
              
        )

        ,

      
      
    );
  }
}
