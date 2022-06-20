import 'package:flutter/material.dart';
import 'package:library_proejct/pages/add_new_book_page.dart';
import 'package:library_proejct/pages/add_new_member_page.dart';
import 'package:library_proejct/pages/book_details_page.dart';
import 'package:library_proejct/pages/books_list.dart';
import 'package:library_proejct/pages/home_page.dart';
import 'package:library_proejct/pages/members_list.dart';
//hello 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme data
      theme: ThemeData(
        primaryColor: const Color(0xFF483434), // appbar bg, buttons bg, book title text,
        scaffoldBackgroundColor: const Color(0xFFFFF3E4), // Page bg only!!
        secondaryHeaderColor: Color.fromARGB(255, 248, 227, 210), // card bg, 
        textTheme: const TextTheme(
          // title Large for book titles in books list and member names in members list
          titleLarge: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Color(0xFF483434),
          ),
        // title medium for appBar Text only
        titleMedium: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 25.5,
            color: Color(0xFFFFF3E4),
            letterSpacing: 2,
        ),
        // title small for other book authors and members memberships
        titleSmall: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.w300,
          color: Color(0xFF6B4F4F),
        ),
       // body medium for text inside buttons
        bodyMedium: TextStyle(
          fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFFF3E4),
            letterSpacing: 1,
        ), 
        // body text 
        bodySmall: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18,
          fontWeight: FontWeight.w300,
          color: Color(0xFF6B4F4F)
        ),
        ),
      ),
      home: AddNewMemberPage(),
    );
  }
}
