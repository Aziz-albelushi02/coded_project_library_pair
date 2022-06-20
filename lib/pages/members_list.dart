import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

class MembersListPage extends StatelessWidget {
  const MembersListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Members List",
            style: Theme.of(context).textTheme.titleMedium),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
            child: GestureDetector(
              onTap: () {
                // write on tap code for adding new member here
                GoRouter.of(context).push("/add-new-member");
              },
              child: Icon(
                Icons.person_add,
                size: 35,
                color: Theme.of(context).secondaryHeaderColor,
              ),
            ),
          )
        ],
      ),
      // start of the body
      body: Center(
          child: Column(
        children: [
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
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/member.jpg")),
                  ),
                ),
                // member details text in card
                Column(
                  // this is to align the text to the left side of the column
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "John Doe",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      "Membership Tier",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text("borrowd: 5 books",
                            style: Theme.of(context).textTheme.bodySmall)),
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
