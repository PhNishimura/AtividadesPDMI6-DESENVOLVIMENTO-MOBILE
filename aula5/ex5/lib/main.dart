import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ConstraintDemo(),
    );
  }
}

class ConstraintDemo extends StatelessWidget {
  const ConstraintDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Constraints Demo')),
      body: Center(
        child: Container(
          color: Colors.blue[100],
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 100,
              minHeight: 100,
              maxWidth: 200,
              maxHeight: 200,
            ),
            child: Container(
              color: Colors.red,
              width: 300, // Ignorado por causa do maxWidth
              height: 300, // Ignorado por causa do maxHeight
              child: const Center(
                child: Text(
                  'Olá!',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
