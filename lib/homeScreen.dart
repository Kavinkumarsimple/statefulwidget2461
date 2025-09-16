import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  String data = "Hellow World";
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
            data,
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  data = "APIIT Sri Lanka";
                });
              },
              child: Text("Click Me to Change the text"))
        ],
      ),
    );
  }
}
