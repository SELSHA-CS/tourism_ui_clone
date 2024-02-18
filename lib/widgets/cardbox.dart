import 'package:flutter/material.dart';

class CardBox extends StatelessWidget {
  const CardBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(4, (index) => SizedBox(
        height: 50,
        width: 70,
        child: Card(
          color: Colors.blueGrey[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Adult"),
                Text("02"),
          ])),
      )))
    );
  }
}