import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isBlue = true;

  void _toggleColor() {
    setState(() {
      _isBlue = !_isBlue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Animated Example",
            style: TextStyle(fontFamily: "FiraCode"),
          ),
          backgroundColor: Color.fromARGB(255, 15, 15, 15),
          centerTitle: true,
        ),
        body: GestureDetector(
          onTap: _toggleColor,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text("made by me!", style: TextStyle(fontFamily: "FiraCode", color: _isBlue ? Colors.blue : Colors.white, fontSize: 25)),
                ElevatedButton(
                  onPressed: () {
                    print('Button pressed');
                  },
                  child: Text('Press Me'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
