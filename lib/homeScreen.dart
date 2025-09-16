import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Home Screen"),
      ),
      body: Column(
        children: [
          Text(
            "Hello World",
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton(
              onPressed: () {
                print("Hey Button is clicked");
              },
              child: Text("Click Me to Change the text"))
        ],
      ),
    );
  }
}
