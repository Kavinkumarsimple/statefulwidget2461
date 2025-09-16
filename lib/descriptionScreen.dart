import 'package:flutter/material.dart';

class DescriptionScreen extends StatefulWidget {
  final String dataFromScreen1;
  const DescriptionScreen({super.key, required this.dataFromScreen1});

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Description Screen"),
      ),
      body: Text("This is a new screen"),
    );
  }
}
