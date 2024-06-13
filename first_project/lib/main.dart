import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GrandientContainer(
          Color.fromARGB(255, 255, 255, 255),
          Color.fromARGB(0, 0, 0, 1),
        ),
      ),
    ),
  );
}
