import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            TextButton(
              child: const Text('This is TextButton'),
              onPressed: () {},
            ),
            MoonButton(
              onTap: () {},
              label: const Text('This is MoonButton'),
            ),
          ],
        ),
      ),
    );
  }
}
