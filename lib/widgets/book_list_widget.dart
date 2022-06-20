import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:library_proejct/models/books_model.dart';

class BookItem extends StatelessWidget {
  BookItem(this.book);

  Book book;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      // text field
      // container for card to add padding
      Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Card(
            elevation: 0,
            color: Theme.of(context).secondaryHeaderColor,
            child: Row(children: [
              // container that houses the placeholder image
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 20, 10),
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/images/book-cover-placeholder.png")),
                ),
              ),
              // book details text in card
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  // this is to align the text to the left side of the column
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        book.title,
                        softWrap: true,
                        overflow: TextOverflow.clip,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    Text(
                      book.author,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text(book.genre.toString(),
                            style: Theme.of(context).textTheme.bodySmall)),
                  ],
                ),
              )
            ]),
          ))
    ]);
  }
}
