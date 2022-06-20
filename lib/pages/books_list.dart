import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BooksListPage extends StatelessWidget {
   BooksListPage({Key? key}) : super(key: key);
  // variables
  var searchBar = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("Books List", style: Theme.of(context).textTheme.titleMedium),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        // for adding an icon button
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
            child: GestureDetector(
              onTap: () {
                // write on tap code for adding new member here
              },
              child: Icon(
                Icons.add,
                size: 35,
                color: Theme.of(context).secondaryHeaderColor,
              ),
            ),
          ) 
        ],
      ),
      body: Center(
          child: Column(
        children: [
          // text field 
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 18),
            width: 350,
            child: TextField(
              controller: searchBar, 
              // this is to style the text that is being written in the textfield
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF483434),
                letterSpacing: 0
              ),
              // decorating the input field itself
              decoration: InputDecoration(
                hintText: "Search by genre, or title", 
                hintStyle: TextStyle(
                  fontSize: 15.5,
                  letterSpacing: 0,
                ),
                filled: true,
                fillColor: Color.fromARGB(217, 255, 255, 255),
                prefixIcon: Icon(Icons.search_rounded, color: Color(0xFF483434),),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none, 
                  borderRadius: BorderRadius.circular(20),
                  ),
              ),
              ),
          ),
          
          // container for card to add padding
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Card(
              elevation: 0,
              color: Theme.of(context).secondaryHeaderColor,
              child: Row(
                children: [
                  // container that houses the placeholder image
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 20, 10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/images/book-cover-placeholder.png")),
                    ),
                ), 
                // book details text in card
                Column(
                  // this is to align the text to the left side of the column 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Book Title", style: Theme.of(context).textTheme.titleLarge,),
                    Text("by Book Author", style: Theme.of(context).textTheme.titleSmall,),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text("Genre: Self-help", style: Theme.of(context).textTheme.bodySmall)
                      ),
                  ],
                )
              ]),
            ),
          )
        ],
      )),
    );
  }
}
