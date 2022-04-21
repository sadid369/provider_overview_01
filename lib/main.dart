// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.blue[100],
              padding: EdgeInsets.all(20),
              child: Text(
                "MyHomePage",
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(height: 20),
            CounterA(counter: counter, increment: increment),
            SizedBox(height: 20),
            Middle(counter: counter),
          ],
        ),
      ),
    );
  }
}

class CounterA extends StatelessWidget {
  final int counter;
  final void Function() increment;
  const CounterA({
    required this.counter,
    required this.increment,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[100],
      padding: EdgeInsets.all(
        20,
      ),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            "$counter",
            style: TextStyle(fontSize: 48),
          ),
          ElevatedButton(
            onPressed: increment,
            child: Text(
              "Increment",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

class Middle extends StatelessWidget {
  final int counter;
  const Middle({
    required this.counter,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          CounterB(counter: counter),
          SizedBox(
            width: 20,
          ),
          Sibling(),
        ],
      ),
    );
  }
}

class CounterB extends StatelessWidget {
  final int counter;
  const CounterB({
    required this.counter,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[100],
      padding: EdgeInsets.all(10),
      child: Text(
        "$counter",
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class Sibling extends StatelessWidget {
  const Sibling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[100],
      padding: EdgeInsets.all(10),
      child: Text(
        "Sibling",
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}
