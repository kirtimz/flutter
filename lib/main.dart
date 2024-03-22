import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData _currentTheme = ThemeData.dark();
  Color _textColor = Colors.white;

  void _toggleTheme() {
    setState(() {
      _currentTheme = _currentTheme == ThemeData.dark()
          ? ThemeData.light()
          : ThemeData.dark();

      // Обновление цвета текста после смены темы
      _textColor = _currentTheme == ThemeData.dark() ? Colors.white : Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _currentTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Example",
            style: TextStyle(
              fontFamily: "FiraCode",
              color: Colors.white,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 15, 15, 15),
          centerTitle: true,
        ),
        body: GestureDetector(
          onTap: _toggleTheme,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "made by me!",
                  style: TextStyle(
                    fontFamily: "FiraCode",
                    color: _textColor,
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _toggleTheme,
                  child: Text('Toggle Theme'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
