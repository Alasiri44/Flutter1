// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('This is my first flutter application'),
          backgroundColor: Colors.blue,
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
    @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _message = ''; // A variable to store the welcome message

  void _showWelcomeMessage() {
    setState(() {
      _message = 'Welcome!'; // Update the message when the button is pressed
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
          children: <Widget>[
          Text(
            'Hello, Flutter!$_message', // Display the welcome message           
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _showWelcomeMessage,            
            child: Text('Press Me Please'),
          ),
          SizedBox(height: 20),
          Flexible(
            child: Image.network(
              'https://tinyurl.com/bdfd544u',
            ),
          ),
        ],
      ),
    );
  }
}