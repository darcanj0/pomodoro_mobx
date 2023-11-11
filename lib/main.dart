import 'package:flutter/material.dart';
import 'package:pomodoro_mobx/core/stores/pomodoro_store.dart';
import 'package:pomodoro_mobx/interface/pages/pomodoro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(
          create: (context) => PomodoroStore(),
        )
      ],
      child: const PomodoroApp(),
    ),
  );
}

class PomodoroApp extends StatelessWidget {
  const PomodoroApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pomodoro Timer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PomodoroPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
