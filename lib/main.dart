import 'package:flutter/material.dart';
import 'package:flutter_app/pages/about_us.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.orange,
        primaryColor: const Color(0xFFDE4435),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AboutUscreen(),
    );
  }
}

class MyAppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
