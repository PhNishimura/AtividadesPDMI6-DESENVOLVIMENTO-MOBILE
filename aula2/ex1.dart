import 'package:flutter/material.dart';

void main() {
  runApp(const AppFlutter());
}

class AppFlutter extends StatelessWidget {
  const AppFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TelaPrincipal(),
    );
  }
}

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(12),
          color: Colors.red,
          width: 110,
          height: 110,
          child: const Center(
            child: Text(
              'Olá!',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
