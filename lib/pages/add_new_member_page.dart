import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';


class AddNewMemberPage extends StatelessWidget {
   AddNewMemberPage({Key? key}) : super(key: key);
  var userInput = TextEditingController();
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
            Text("Add New Member Form", style: Theme.of(context).textTheme.titleLarge,),
          // Form column
          Column(
            children: [
// first name textfield
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 18),
                width: 250,
                child: TextField(
                  controller: userInput,
                  // this is to style the text that is being written in the textfield
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF483434),
                      letterSpacing: 0),
                  // decorating the input field itself
                  decoration: InputDecoration(
                    hintText: "e.g. Ameera",
                    hintStyle: TextStyle(
                      fontSize: 15.5,
                      letterSpacing: 0,
                      color: Colors.black26
                    ),
                    label: Text("First Name", style: TextStyle(
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
// end of first name text field

// last name textfield
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 18),
                width: 250,
                child: TextField(
                  controller: userInput,
                  // this is to style the text that is being written in the textfield
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF483434),
                      letterSpacing: 0),
                  // decorating the input field itself
                  decoration: InputDecoration(
                    hintText: "e.g. Alotaibi",
                    hintStyle: TextStyle(
                      fontSize: 15.5,
                      letterSpacing: 0,
                      color: Colors.black26
                    ),
                    label: Text("Last Name", style: TextStyle(
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
// end of last name text field

// add a dropdown menu here for membership tier ************************// 

// add button 
              ElevatedButton(
                  onPressed: () {
                    // add new member function here
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
