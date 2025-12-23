import 'package:flutter/material.dart';
import 'package:masterclass_course/app_routes.dart';
import 'package:masterclass_course/pages/home_page.dart';
import 'package:masterclass_course/pages/profile_page.dart';
import 'package:masterclass_course/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final List<Widget> _pages = [HomePage(), ProfilePage(), SettingsPage()];

  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Page-1",
          style: TextStyle(
            color: Colors.brown[500],
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.brown[100],
      ),

      body: _pages[_selectedIndex],

      drawer: Drawer(
        backgroundColor: Colors.brown[100],
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.favorite, size: 48)),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, AppRoutes.homePage);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.settingsPage);
              },
            ),
            //home page list tile
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: navigateBottomBar,

        items: [
          //home
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

          //profile
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),

          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
