import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book list"),
        centerTitle: true,
      ),
      // body
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            color: Colors.amber,
            child: Column(
              children: [
                Text("Book Title", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),), 
                Text("Author", style: TextStyle(fontSize: 25),), 
                Text("genre", style: TextStyle(fontSize: 20)), 
                ]
                )
                ),
        ],
      ),
    );
  }
}
