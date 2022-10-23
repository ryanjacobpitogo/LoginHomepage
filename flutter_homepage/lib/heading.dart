import 'package:flutter/material.dart';

import 'brand_title.dart';
import 'input_field.dart';
const double defPadding = 20.0;

class Heading extends StatelessWidget {
  const Heading({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [ 
        Container(
          padding: const EdgeInsets.only(
            left: defPadding,
            right: defPadding,
            bottom: defPadding,
          ),
          height: size.height * .28,
          decoration: const BoxDecoration(
            color: Color(0xFF1B0130),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(36), bottomRight: Radius.circular(36))
          ),
          child: Column(
            children: [
              SizedBox(height: size.height *.01),
              Row(
                children: [
                  const BrandTitle(word1: "WELCOME!\n", word2: "USER", fSize: 48),
                  const Spacer(),
                  Image.asset("assets/images/user.png", height: size.height*.15, width: size.width*.30),
                ]),
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            alignment: Alignment.center,
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: InputField(label: "Search"),
            ),
          )
        )
      ]
    );
  }
}