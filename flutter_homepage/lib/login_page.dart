import 'package:flutter/material.dart';

import 'brand_title.dart';
import 'button.dart';
import 'input_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/login_bg.jpg'),
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ 
                  Image.asset('assets/images/logo.png', width: size.width * .8, height: size.height *.4),
                  SizedBox(height: size.height * .02),
                  const BrandTitle(word1: "FOX", word2: "HOLE", fSize: 48),
                  SizedBox(height: size.height * .02),
                  const InputField(label: "Username"),
                  SizedBox(height: size.height * .03),
                  const InputField(label: "Password"),
                  SizedBox(height: size.height * .03),
                  const Button(routePage: '/second', pad: 10, hght: 50, label: "Log-in", btnColor: 0xFFFF717F, minW: double.infinity, maxW: 500,),        
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}