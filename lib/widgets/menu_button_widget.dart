import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String route;
  final String text;
  final IconData icon;

  const MenuButton(
      {super.key, required this.route, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.of(context).pushNamed(route),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        backgroundColor: Colors.pink,
        shape: const StadiumBorder(),
        minimumSize: const Size(50.0, 5.0),
      ),
      child: Row(children: [
        Icon(
          icon,
          size: 50,
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 23),
        ),
      ]),
    );
  }
}
