import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }

}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Shopping List", style: TextStyle(fontSize: 22),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text("Apples", style: TextStyle(fontSize: 18),),
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text("Bananas",style: TextStyle(fontSize: 18),),
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text("Bread",style: TextStyle(fontSize: 18),),
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text("Milk",style: TextStyle(fontSize: 18),),
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text("Eggs",style: TextStyle(fontSize: 18),),
          )
        ],
      ),

    );
  }

}