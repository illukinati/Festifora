import 'package:flutter/material.dart';

class Tombol extends StatelessWidget {
  final Color? color;
  final String title;
  final Function function;

  const Tombol({
    Key? key,
    required this.color,
    required this.title,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // #fc03b1
          primary: this.color,
        ),
        onPressed: () {
          this.function;
        },
        child: Text(this.title),
      ),
    );
  }
}
