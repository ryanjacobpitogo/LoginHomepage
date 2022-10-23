import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
const double defPadding = 20.0;

class BrandTitle extends StatelessWidget {
  const BrandTitle({
    Key? key, required this.word1, required this.word2, required this.fSize,
  }) : super(key: key);

  final String word1, word2;
  final double fSize;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: word1,
            style: GoogleFonts.bebasNeue(
              color: const Color(0xFFE2CF13),
              fontSize: fSize
            )
          ),
          TextSpan(
            text: word2,
            style: GoogleFonts.bebasNeue(
              color: const Color(0xFFFF717F),
              fontSize: fSize
            )
          )
        ]
      ) 
    );
  }
}