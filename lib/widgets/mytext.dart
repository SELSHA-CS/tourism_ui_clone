import 'package:flutter/material.dart';

class MyText extends StatelessWidget {

  final String text1;
  final String text2;
  const MyText({
    super.key, required this.text1, required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text1, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
        Text(text2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
      ],
    );
  }
}