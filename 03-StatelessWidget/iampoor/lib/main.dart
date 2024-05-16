import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'I am Poor',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey[900],
        ),
        backgroundColor: Colors.blueGrey,
        body: const Center(
          child: Image(
            image: NetworkImage(
              'https://cdni.iconscout.com/illustration/premium/thumb/poor-kids-begging-while-sitting-on-street-5245208-4407347.png?f=webp',
            ),
          ),
        ),
      ),
    ),
  );
}
