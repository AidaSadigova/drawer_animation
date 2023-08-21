import 'package:flutter/material.dart';
import 'menu_widget.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Saved Page'),
        leading: MenuWidget(),
      ),
    );
  }
}
