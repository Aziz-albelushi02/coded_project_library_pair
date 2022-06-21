import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:library_proejct/widgets/book_item_widget.dart';

import '../models/books_model.dart';

class BooksListPage extends StatelessWidget {
  BooksListPage({Key? key}) : super(key: key);
  // variables
  var searchBar = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Books List",
              style: Theme.of(context).textTheme.titleMedium),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
// for adding an icon button
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
              child: GestureDetector(
                onTap: () {
// write on tap code for adding new book here
                  GoRouter.of(context).push("/add-new-book");
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
        body: ListView.builder(
          itemCount: books.length,
          itemBuilder: (context, index) => BookItem(books[index]),
        ));
  }
}
