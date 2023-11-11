import 'package:flutter/material.dart';

class TimeInput extends StatelessWidget {
  const TimeInput({super.key, required this.title, required this.minutes});

  final String title;
  final int minutes;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        Text(minutes.toString()),
      ],
    );
  }
}
