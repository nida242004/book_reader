import 'package:book_reader/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(NovelReaderApp());
}

class NovelReaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Novel Reader',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
