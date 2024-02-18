import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecRows extends StatelessWidget {

  final String text1;
  final IconData icon1;
  final String text2;
  final IconData icon2;
  final String text3;
  final IconData icon3;
  
  const SpecRows({
    super.key, required this.text1, required this.icon1, required this.text2, required this.icon2, required this.text3, required this.icon3,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icon1, color: Colors.blue,),
            Text(text1, style: GoogleFonts.poppins(color: Colors.blue),),
          ],
        ),
        Row(
          children: [
            Icon(icon2, color: Colors.blue,),
            Text(text2, style: GoogleFonts.poppins(color: Colors.blue),),
          ],
        ),
        Row(
          children: [
            Icon(icon3, color: Colors.blue,),
            Text(text3, style: GoogleFonts.poppins(color: Colors.blue),),
          ],
        ),
      ],
    );
  }
}