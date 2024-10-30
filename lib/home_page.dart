import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'new_page.dart'; // Make sure the import path is correct

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Example"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // Display the local image
            Image.asset(
              "assets/images/img.png",
              width: 200,
              height: 200,
            ),


            ElevatedButton(
              onPressed: () {
                // Navigate to NewPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewPage()),
                );

                Fluttertoast.showToast(msg: "Why click me ??");
              },
              child: Text("Click Me"),
            ),
          ],
        ),
      ),
    );
  }
}

