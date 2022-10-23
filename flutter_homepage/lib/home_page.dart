import 'package:flutter/material.dart';
import 'package:flutter_homepage/title_heading.dart';

import 'brand_title.dart';
import 'heading.dart';
import 'items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  
  @override
  Widget build (BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Heading(size: size),
            TitleHeader(size: size, label: "For You"),
            ForYouItems(size: size),
            TitleHeader(size: size, label: "Popular"),
            PopularItems(size: size)
          ]
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          bottomNavBarItem(label: "Home"),
          bottomNavBarItem(label: "Saved"),
          bottomNavBarItem(label: "Account"),
          bottomNavBarItem(label: "Option"),
        ],
        selectedItemColor: const Color(0xFFE2CF13),
      ),
    );
  }

  BottomNavigationBarItem bottomNavBarItem({required String label}) {
    return BottomNavigationBarItem(
          icon: Icon(
            (){
              if(label == 'Home'){
                return Icons.home;
              } else if (label == 'Saved'){
                return Icons.save_alt_rounded;
              } else if (label == 'Account'){
                return Icons.account_circle;
              } else {
                return Icons.settings;
              }
            }()
          ),
          label: label,
          backgroundColor: const Color(0xFF1B0130),
        );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: const Color(0xFF1B0130),
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ),
      title: const Center(child: BrandTitle(word1: "FOX", word2: "HOLE", fSize: 48)),
      actions: const [
        LogOutButton()
      ],
    );
  }
}

class LogOutButton extends StatelessWidget {
  const LogOutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () => {Navigator.pop(context)}, icon: const Icon(Icons.logout)
    );
  }
}
