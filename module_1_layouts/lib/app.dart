import 'package:flutter/material.dart';
import 'home/home.dart';

const app_name = 'Module 1 - Layouts';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: app_name,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(app_name),
          ),
        ),
        body: Home(),
      ),
    );
  }
}
