import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '/widgets/book_item_widget.dart';
import '/models/books_model.dart';
import '/pages/add_new_book_page.dart';

class BookProvider extends ChangeNotifier {
  var books = [];
  Book book;
  BookProvider({required this.book});
  void addBook() {
    books.add(book);
    notifyListeners();
  }
}
