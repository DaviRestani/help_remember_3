import 'package:flutter/material.dart';
import 'package:help_remember_3/widgets/menu_button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.pink),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Menu Principal',
          style: TextStyle(color: Colors.pink),
        ),
        centerTitle: true,
      ),
      body: const MenuPageBox(),
    );
  }
}

class MenuPageBox extends StatelessWidget {
  const MenuPageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: const [
            MenuButton(
              route: '/family_screen',
              text: "Família",
              icon: Icons.group,
            ),
          ],
        ),
      ),
    );
  }
}
