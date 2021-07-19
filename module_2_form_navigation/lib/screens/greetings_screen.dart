import 'package:flutter/material.dart';
import 'components.dart';

class GreetingsScreen extends StatefulWidget {
  final String id;
  GreetingsScreen({Key? key, required this.id}) : super(key: key);

  @override
  _GreetingsScreenState createState() => _GreetingsScreenState();
}

class _GreetingsScreenState extends State<GreetingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          getMainTitle(),
          label("Welcomes you"),
          Expanded(
            child: Center(
              child: Text(
                widget.id,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          label("Have a great journey ahead !!"),
          const Spacer(),
          const Spacer(),
        ],
      ),
    );
  }
}
