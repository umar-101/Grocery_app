import 'package:flutter/material.dart';
import 'package:grocery/Screens/CartScreen/cart_screen.dart';
import 'package:grocery/Screens/SearchScreen/search.dart';

import 'Screens/CategoryScreen/categories_screen.dart';
import 'Screens/HomeScreen/home_screen.dart';
import 'Screens/NotificationsScreen/notification.dart';
import 'constants.dart';

class NavBarMain extends StatelessWidget {
  const NavBarMain({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Color(0xFF6200EE),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      onTap: (value) {
        // Respond to item press.
      },
      items: [
        BottomNavigationBarItem(
          title: SizedBox.shrink(),
          icon: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            icon: Icon(Icons.home),
            iconSize: 30.0,
          ),
        ),
        BottomNavigationBarItem(
          title: SizedBox.shrink(),
          icon: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoryScreen()),
              );
            },
            icon: Icon(Icons.category),
            iconSize: 30.0,
          ),
        ),
        BottomNavigationBarItem(
          title: SizedBox.shrink(),
          icon: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchScreen()),
              );
            },
            icon: Icon(Icons.search),
            iconSize: 30.0,
          ),
        ),
        BottomNavigationBarItem(
          title: SizedBox.shrink(),
          icon: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationScreen()),
              );
            },
            icon: Icon(Icons.notifications),
            iconSize: 30.0,
          ),
        ),
        BottomNavigationBarItem(
          title: SizedBox.shrink(),
          icon: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            },
            icon: Icon(Icons.shopping_cart),
            iconSize: 30.0,
          ),
        ),
      ],
    );
  }
}
