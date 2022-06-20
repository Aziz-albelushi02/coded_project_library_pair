import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddNewBookPage extends StatelessWidget {
   AddNewBookPage({Key? key}) : super(key: key);

  var _newBookTitle = TextEditingController();
  var _newBookAuthor = TextEditingController();
  var _newBookGenre = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Member",
            style: Theme.of(context).textTheme.titleMedium),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Text("Add New Book Form", style: Theme.of(context).textTheme.titleLarge,),
          // Form column
          Column(
            children: [
// first book title textfield
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 18),
                width: 250,
                child: TextField(
                  controller: _newBookTitle,
                  // this is to style the text that is being written in the textfield
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF483434),
                      letterSpacing: 0),
                  // decorating the input field itself
                  decoration: InputDecoration(
                    hintText: "e.g. Lore",
                    hintStyle: TextStyle(
                      fontSize: 15.5,
                      letterSpacing: 0,
                      color: Colors.black26
                    ),
                    label: Text("Book Title", style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 23.5
                      ),),
                    filled: true,
                    fillColor: Color.fromARGB(217, 255, 255, 255),
                    contentPadding: EdgeInsets.only(left: 40),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
// end of book title text field

// book author textfield
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 18),
                width: 250,
                child: TextField(
                  controller: _newBookAuthor,
                  // this is to style the text that is being written in the textfield
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF483434),
                      letterSpacing: 0),
                  // decorating the input field itself
                  decoration: InputDecoration(
                    hintText: "e.g. George R. R. Martin",
                    hintStyle: TextStyle(
                      fontSize: 15.5,
                      letterSpacing: 0,
                      color: Colors.black26
                    ),
                    label: Text("Author Name", style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 23.5
                      ),),
                    filled: true,
                    fillColor: Color.fromARGB(217, 255, 255, 255),
                    contentPadding: EdgeInsets.only(left: 40),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
// end of book author name text field

              ElevatedButton(
                  onPressed: () {
                    // add new book function here
                  },
                  child: Text("Add", style: Theme.of(context).textTheme.bodyMedium,),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  ),
                ),

            ],
          ),
        ],
      )),
    );
  }
}