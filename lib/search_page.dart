import 'package:flutter/material.dart';
import 'menu_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Profile Page'),
        leading: MenuWidget(),
      ),
    );
  }
}
