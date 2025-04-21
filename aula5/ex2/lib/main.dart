import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo ThemeData',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[300], // Fundo cinza claro
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Widget',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                border: Border.all(
                  color: Colors.orange,
                  width: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
