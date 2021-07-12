import 'package:flutter/material.dart';
import 'box.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        MyBox(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [MyBox(), MyBox(), MyBox()],
        ),
        MyBox(),
        MyBox(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: const [MyBox(), SizedBox(height: 35), MyBox()],
            ),
            MyBox(width: 275, height: 185),
          ],
        ),
      ],
    );
  }
}
