import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {

  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  List<bool> isSelected = List.generate(5, (index) => false);

  int selectedCount() {
    int count = 0;
    for (bool selected in isSelected) {
      if (selected) {
        count++;
      }
    }
    return count;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selection Screen'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              ColorChange(index);
            },
            tileColor: isSelected[index] ? Colors.blue : null,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int selectedItemCount = selectedCount();
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Selected Items'),
                content: Text('Number of Selected items: $selectedItemCount'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Close'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.check),
      ),
    );
  }

  void ColorChange(int index) {
    setState(() {
      isSelected[index] = !isSelected[index];
    });
  }
}

