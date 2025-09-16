import 'package:flutter/material.dart';
import 'package:stateful_2461/descriptionScreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  String data = "No Name";
  TextEditingController nametxt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Home Screen"),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: nametxt, // id
          ),
          Text(
            data,
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                data = nametxt.text;
              });
            },
            child: Text("Click Me to Change the text"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => DescriptionScreen(
                    dataFromScreen1: data,
                  ),
                ),
              );
            },
            child: Text("Navigate to Second Screen"),
          )
        ],
      ),
    );
  }
}
