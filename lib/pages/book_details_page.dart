import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BookDetailsPage extends StatelessWidget {
  const BookDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("Book Details", style: Theme.of(context).textTheme.titleMedium),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // image placeholder
              Container(
              width: 300,
              height: 300,
              margin: EdgeInsets.only(bottom: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/book-cover-placeholder.png")),
              ),
            ),
              
              Text("Book Title", style: Theme.of(context).textTheme.titleLarge,),
              Text("by Book Author", style: Theme.of(context).textTheme.titleLarge,),
              Text("Genre", style: Theme.of(context).textTheme.titleSmall,),
              Text("Available?", style: Theme.of(context).textTheme.titleSmall,), 
            ]
            ),
          ),
    );
  }
}
