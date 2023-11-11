import 'package:flutter/material.dart';

class TimeInput extends StatelessWidget {
  const TimeInput({super.key, required this.title, required this.minutes});

  final String title;
  final int minutes;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.redAccent,
              ),
              child: const Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
            ),
            Text(
              '${minutes} min',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.greenAccent,
              ),
              child: const Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
