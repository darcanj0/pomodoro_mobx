import 'package:flutter/material.dart';

class TimeInput extends StatelessWidget {
  const TimeInput(
      {super.key,
      required this.title,
      required this.minutes,
      required this.increment,
      required this.decrement});

  final String title;
  final int minutes;
  final void Function()? increment;
  final void Function()? decrement;

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
              onPressed: decrement,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.redAccent,
              ),
              child: const Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
            ),
            Text(
              '$minutes min',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            ElevatedButton(
              onPressed: increment,
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
