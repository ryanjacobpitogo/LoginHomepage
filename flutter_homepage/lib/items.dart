import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'brand_title.dart';
const double defPadding = 20.0;

class PopularItems extends StatelessWidget {
  const PopularItems({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( 
      scrollDirection: Axis.horizontal,
      child: Container(
        decoration: BoxDecoration(
        color: const Color(0xFF1B0130),
        borderRadius: BorderRadius.circular(60),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(defPadding-5, defPadding*1.5, defPadding*2.2,0),
          child: Row(
            children: [
              Items(size: size, image: "assets/images/img5.jpg", text1: "Fluffy Sunset", text2: "Free", text3: "4.1 MB", logHeight: 0.2, logWidth: 0.75),
              Items(size: size, image: "assets/images/img6.jpg", text1: "Beyond the Summit", text2: "Free", text3: "5.0 MB", logHeight: 0.2, logWidth: 0.75),
              Items(size: size, image: "assets/images/img7.jpg", text1: "Afloat", text2: "Free", text3: "3.9 MB", logHeight: 0.2, logWidth: 0.75),
            ],
          ),
        ),
      ),
    );
  }
}

class ForYouItems extends StatelessWidget {
  const ForYouItems({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( 
      scrollDirection: Axis.horizontal,
      child: Container(
        decoration: BoxDecoration(
        color: const Color(0xFF1B0130),
        borderRadius: BorderRadius.circular(60),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(defPadding-5, defPadding*1.5, defPadding*2.2,0),
          child: Row(
            children: [
              Items(size: size, image: "assets/images/img1.jpg", text1: "Train", text2: "Free", text3: "4.1 MB", logHeight: 0.18, logWidth: 0.30),
              Items(size: size, image: "assets/images/img2.jpg", text1: "Nether", text2: "Free", text3: "5.0 MB", logHeight: 0.18, logWidth: 0.30),
              Items(size: size, image: "assets/images/img3.jpg", text1: "Station", text2: "Free", text3: "3.9 MB", logHeight: 0.18, logWidth: 0.30),
              Items(size: size, image: "assets/images/img4.jpg", text1: "Sky", text2: "Free", text3: "4.5 MB", logHeight: 0.18, logWidth: 0.30),
            ],
          ),
        ),
      ),
    );
  }
}

class Items extends StatelessWidget {
  const Items({
    Key? key,
    required this.size, required this.image, required this.text1, required this.text2, required this.text3, required this.logWidth, required this.logHeight,
  }) : super(key: key);

  final Size size;
  final String image, text1, text2, text3;
  final double logWidth, logHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(-5, -5),
            blurRadius: 15,
            color: const Color(0xFFFF717F).withOpacity(0.70),
          ),
        ],
      ),
      margin: const EdgeInsets.only(left: defPadding, top: defPadding/1.5, bottom: defPadding*2),
      width: size.width * logWidth,
      child: Column(
        children: [
          Image.asset(image, height: size.height*logHeight, width: size.width*logWidth, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                BrandTitle(word1: "$text1 \n", word2: text2, fSize: 20),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF717F),
                    borderRadius: BorderRadius.circular(20)
                  ), 
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text3,
                      style: GoogleFonts.bebasNeue(
                        color: Colors.white,
                        fontSize: 16
                      ),
                    ),
                  )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}