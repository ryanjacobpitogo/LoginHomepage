import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';
import 'login_page.dart';

const double defPadding = 20.0;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //routes
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the LoginPage widget.
        '/': (context) => const LoginPage(),
        // When navigating to the "/second" route, build the HomePage widget.
        '/second': (context) => const HomePage(),
      },
      theme: ThemeData( 
        //default colors
        colorScheme: const ColorScheme.light().copyWith(primary: const Color(0xFFFF717F)),
        scaffoldBackgroundColor: const Color(0xFF1B0130),
        //text colors and font
        textTheme: GoogleFonts.notoSansTextTheme(
          Theme.of(context).textTheme.apply(
            bodyColor: const Color(0xFF1B0130), 
            displayColor: const Color(0xFF1B0130),
          )
        ),
        //Input field
        inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(36),
              borderSide: const BorderSide(width: 3, color: Color(0xFFE2CF13)
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(36),
              borderSide: const BorderSide(width: 3, color: Color(0xFFFF717F)
            ),
          ),
        ),
        //routes
        //button
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(36)
            ),
          )
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}


