import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'button.dart';
const double defPadding = 20.0;

class TitleHeader extends StatelessWidget {
  const TitleHeader({
    Key? key,
    required this.size, required this.label,
  }) : super(key: key);

  final Size size;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: defPadding-4),
      child: Row(
        children: [
          Text(
            label,
            style: GoogleFonts.notoSans(
              color: const Color(0xFF1B0130),
              fontSize: 32,
              fontWeight: FontWeight.bold
            )
          ),
          const Spacer(),
          Button(routePage: "", pad: 5, hght: 5, label: "More", btnColor: 0xFF1B0130, minW: size.width * .1, maxW: 200)
        ],
      ),
    );
  }
}