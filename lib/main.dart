import 'package:drawer_animation/profile_page.dart';
import 'package:drawer_animation/saved_page.dart';
import 'package:drawer_animation/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'menu_page.dart';
import 'home_page.dart';
import 'menu_item.dart';

void main() => runApp(const MaterialApp(home: MyWidget()));

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  MenuItem currentItem = MenuItems.home;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        style: DrawerStyle.style2,
        borderRadius: 30,
        slideWidth: MediaQuery.of(context).size.width * 0.5,
        showShadow: true,
        menuBackgroundColor: Color.fromARGB(255, 211, 245, 227),
        mainScreen: getScreen(),
        menuScreen: Builder(builder: (context) {
          return MenuPage(
            currentItem: currentItem,
            onSelectedItem: (item) {
              setState(() => currentItem = item);
              ZoomDrawer.of(context)!.close();
            },
          );
        }));
  }

  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.home:
        return const HomePage();
      case MenuItems.saved:
        return const SavedPage();
      case MenuItems.search:
        return const SearchPage();
      case MenuItems.profile:
      default:
        return const ProfilePage();
    }
  }
}
