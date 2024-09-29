import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/main_profile_screen.dart';
import 'package:instagram_clone/ui/screens/create_post_screen.dart';
import 'package:instagram_clone/ui/screens/main_home_screen.dart';
import 'package:instagram_clone/ui/screens/reels_video_screen.dart';
import 'package:instagram_clone/ui/screens/search_bar_screen.dart';
import 'package:instagram_clone/ui/widgets/inst_appbar.dart';

class BottomNavbarHomeScreen extends StatefulWidget {
  const BottomNavbarHomeScreen({super.key});

  @override
  State<BottomNavbarHomeScreen> createState() => _BottomNavbarHomeScreenState();
}

class _BottomNavbarHomeScreenState extends State<BottomNavbarHomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
  MainHomeScreen(),
    SearchBarScreen(),
    CreatePostScreen(),
    ReelsVideoScreen(),
    MainProfileScreen()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InstAppBar(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
      selectedIndex: _selectedIndex,
          onDestinationSelected: (int index){
        _selectedIndex = index;
        setState(() {});
          },
          destinations: const[
            NavigationDestination(icon: Icon(Icons.home), label: 'Home',),
            NavigationDestination(icon: Icon(Icons.search), label: 'Search',),
            NavigationDestination(icon: Icon(Icons.add_box_outlined), label: 'Story',),
            NavigationDestination(icon: Icon(Icons.video_collection_sharp), label: 'Reels',),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile',),
          ],

      ),
    );
  }
}


