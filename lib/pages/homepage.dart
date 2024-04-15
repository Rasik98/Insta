import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:insta/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFA774FF),
        title: Center(
         child: Image.asset(
          "assets/images/insta.png",
          color: Colors.white,
          width: 150,
         ),
        ),
        
        actions: [IconButton(
            icon:  const Icon(Icons.messenger, color: Colors.white,
            ),
            onPressed: () {}, 
            ),],
      ),
      bottomNavigationBar: Container(
        
        color: Colors.deepPurple,
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 8.0,
              ),
            child: GNav(
              backgroundColor: Colors.deepPurple,
              color: Color(0xFFA774FF),
              activeColor: Colors.white,
              tabBackgroundColor: Color(0xFF8F63DB),
              gap: 5,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',),
                GButton(
                  icon: Icons.search,
                  text: 'Search',),
                GButton(
                  icon: Icons.add_circle,
                  text: 'Add Photo',),
                GButton(
                  icon: Icons.favorite,
                  text: 'Like',),
                GButton(
                  icon: Icons.account_circle_rounded,
                  text: 'Profile',),
              ]
              ),
          ),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}



