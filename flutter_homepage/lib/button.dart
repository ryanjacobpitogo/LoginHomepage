import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
const double defPadding = 20.0;

class Button extends StatelessWidget {
  const Button({
    Key? key, required this.routePage, required this.pad, required this.hght, required this.label, required this.btnColor, required this.minW, required this.maxW,
  }) : super(key: key);

  final String routePage, label;
  final int btnColor;
  final double pad, minW, maxW, hght;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 120,
        maxWidth: 120,
      ),
      child: ElevatedButton(
        
        onPressed: ()=>{
          Navigator.pushNamed(context, routePage)
        }, 
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(btnColor),
          minimumSize: Size.fromHeight(hght),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: pad, vertical: pad),
          child: Text(
            label,
            style: GoogleFonts.bebasNeue(
              fontSize: 28
            ),
          ),
        )
      ),
    );
  }
}