import 'package:flutter/material.dart';

const appTitle = "CRUX FLUTTER SUMMER GROUP";

Widget label(String text) {
  return Text(text, style: const TextStyle(fontSize: 16));
}

Widget getMainTitle() {
  return const Expanded(
    flex: 3,
    child: Center(
      child: Text(
        appTitle,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}

Widget getTextFormField(String label, TextEditingController? c, String hint) {
  return Container(
    margin: const EdgeInsets.only(bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 16)),
        TextFormField(
          controller: c,
          decoration: InputDecoration(hintText: hint),
        ),
      ],
    ),
  );
}

Widget getButton(String text, Function()? func) {
  return Container(
    margin: const EdgeInsets.only(top: 12, bottom: 10),
    child: ElevatedButton(
      onPressed: func,
      child: Text(
        text,
        style: TextStyle(fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(18),
          minimumSize: const Size(double.infinity, 30),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    ),
  );
}
