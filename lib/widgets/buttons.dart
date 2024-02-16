import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainButton extends StatelessWidget {
  final Color bgcolor;
  final Function ontap;
  final String label;
  final IconData icon;
  final double width;

  const MainButton({
    super.key, required this.bgcolor, required this.ontap, required this.label, required this.icon, required this.width
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: ElevatedButton(
        onPressed: () => ontap(),
        style: ElevatedButton.styleFrom(
          backgroundColor: bgcolor,
        ),
        child: Row(
          children: [
            Text(label, style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14
            ),),
            SizedBox(width: width,),
            FaIcon(icon, color: Colors.white,)
          ],
        )
      ),
    );
  }
}