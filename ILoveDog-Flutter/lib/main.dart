import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title : Text("I Love My Dog"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/dog.png'),
          ),
        ),
      ),
    ),
  );
}
