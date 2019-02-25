import 'package:flutter/material.dart';
import 'example.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.blue, accentColor: Colors.red),
      home: ExamplePage(title: 'Example'),
    );
  }
}
