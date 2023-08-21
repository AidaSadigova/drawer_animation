import 'package:flutter/material.dart';
import 'menu_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Profile Page'),
        leading: MenuWidget(),
      ),
    );
  }
}
