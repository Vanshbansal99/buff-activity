import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String msg = 'Flutter ElevatedButton Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter ElevatedButton Example'),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  msg,
                  style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
                ),
                ElevatedButton(
                  child: Text(
                    "Click Here",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: _changeText,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.yellow,
                    padding: EdgeInsets.all(8.0),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _changeText() {
    setState(() {
      if (msg.startsWith('F')) {
        msg = 'We have learned Flutter ElevatedButton example.';
      } else {
        msg = 'Flutter ElevatedButton Example';
      }
    });
  }
}