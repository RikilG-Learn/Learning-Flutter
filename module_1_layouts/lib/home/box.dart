import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  final double width;
  final double height;

  const MyBox({Key? key, this.width = 90.0, this.height = 75.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 196, 196, 196),
      ),
      width: width,
      height: height,
    );
  }
}
