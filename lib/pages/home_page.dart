import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  var name = "User";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home", style: Theme.of(context).textTheme.titleMedium),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      // body
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Welcome message
            Text(
              "Welcome, \n$name".toUpperCase(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),

            // image
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/member.jpg")),
              ),
            ),

            // lists buttons
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // books list button
                ElevatedButton.icon(
                  onPressed: () {
                    // books list button function
                  },
                  icon: Icon(Icons.auto_stories_rounded),
                  label: Text(
                    "Books List",
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    padding: EdgeInsets.fromLTRB(15, 10, 49, 10),
                  ),
                ),

                Container(
                  child: null,
                  margin: EdgeInsets.only(top: 10),
                ),
                // Members list button
                ElevatedButton.icon(
                  onPressed: () {
                    // members list button function
                  },
                  icon: Icon(Icons.person),
                  label: Text(
                    "Members List",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    padding: EdgeInsets.fromLTRB(15, 10, 20, 10),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
