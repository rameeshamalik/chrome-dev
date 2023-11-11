import 'package:flutter/material.dart';

void main() {
  runApp(const SimpleApp());
}

class SimpleApp extends StatefulWidget {
  const SimpleApp({Key? key});

  @override
  State<SimpleApp> createState() => _SimpleAppState();
}

class _SimpleAppState extends State<SimpleApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[850],
        body: SimpleBody(),
      ),
    );
  }
}

class SimpleBody extends StatelessWidget {
  const SimpleBody({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: Text("Mail", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Images", style: TextStyle(color: Colors.white)),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.apps_rounded),
              color: Colors.white,
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Google", style: TextStyle(color: Colors.white, fontSize: 60)),
            SizedBox(height: 20),
            SizedBox(
              width: 400,
              height: 50,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Icon(Icons.search),
                    SizedBox(width: 20),
                    Text("Search Google or type a URL"),
                    SizedBox(width: 100),
                    Icon(Icons.mic),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add Shortcut Button
                SizedBox(
                  height: 60,
                  width: 60,
                  child: Card(
                    color: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                // Flutter Demo Text
                Text(
                  "Flutter Demo",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text("Add Shortcut", style: TextStyle(color: Colors.white)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 210,
              height: 60,
              padding: EdgeInsets.all(10),
              child: Card(
                shadowColor: Colors.black,
                color: Colors.black12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(Icons.edit),
                    SizedBox(width: 10),
                    Text(
                      "Customize Chrome",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
