import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

class AddNewBookPage extends StatelessWidget {
  AddNewBookPage({Key? key}) : super(key: key);
  bool value = true;
  var _newBookTitle = TextEditingController();
  var _newBookAuthor = TextEditingController();
  var _newBookGenre = TextEditingController();
  var _isAvailable = TextEditingController();
  var _borrowedBy = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Book",
            style: Theme.of(context).textTheme.titleMedium),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Add New Book Form",
            style: Theme.of(context).textTheme.titleLarge,
          ),
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
                        color: Colors.black26),
                    label: Text(
                      "Book Title",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 23.5),
                    ),
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
                        color: Colors.black26),
                    label: Text(
                      "Author Name",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 23.5),
                    ),
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

// first book genre textfield
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 18),
                width: 250,
                child: TextField(
                  controller: _newBookGenre,
                  // this is to style the text that is being written in the textfield
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF483434),
                      letterSpacing: 0),
                  // decorating the input field itself
                  decoration: InputDecoration(
                    hintText: "e.g. Sci-fi",
                    hintStyle: TextStyle(
                        fontSize: 15.5,
                        letterSpacing: 0,
                        color: Colors.black26),
                    label: Text(
                      "Book Genre",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 23.5),
                    ),
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
// end of book genre text field

              Row(
                children: [
                  Text("check if available"),
                  // Checkbox(
                  //   value: value, onChanged: (onChanged))
                ],
              ),
// *********** Checkbox instead of textfield for availibility*******************
// first book borrowed by textfield
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 18),
                width: 250,
                child: TextField(
                  controller: _borrowedBy,
                  // this is to style the text that is being written in the textfield
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF483434),
                      letterSpacing: 0),
                  // decorating the input field itself
                  decoration: InputDecoration(
                    hintText: "e.g. Ameera, Hasan",
                    hintStyle: TextStyle(
                      fontSize: 15.5,
                      letterSpacing: 0,
                      color: Colors.black26
                    ),
                    label: Text("Borrowed by:", style: TextStyle(
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
// end of borrowed by text field

              ElevatedButton(
                onPressed: () {
                  // add new book function here needs provider
                },
                child: Text(
                  "Add",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
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
