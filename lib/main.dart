import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Hi');
    return MaterialApp(
      title: 'iQA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('iQA'),
        ),
        body: Center(
          child: Text(
            'Welcome to iQA!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
