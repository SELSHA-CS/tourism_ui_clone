import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExButton extends StatelessWidget {
  const ExButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      onPressed: (){},
      color: const Color.fromARGB(255, 10, 59, 99),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text("Explore Now", style: GoogleFonts.poppins(color: Colors.white),),
    );
  }
}