import 'package:flutter/material.dart';

class TimerButton extends StatelessWidget {
  const TimerButton({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: const Color.fromARGB(255, 26, 25, 25),
        elevation: 10,
        foregroundColor: Colors.redAccent,
      ),
      onPressed: () {},
      icon: Icon(
        icon,
        color: Colors.white,
        size: 27,
      ),
      label: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
