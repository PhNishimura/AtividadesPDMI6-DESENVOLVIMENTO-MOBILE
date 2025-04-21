import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Layouts',
      theme: ThemeData.dark().copyWith(
        // ThemeData aplicado
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      home: const ResponsiveLayout(),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    // Verifica a orientação da tela
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Layouts'),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: isPortrait ? const PortraitLayout() : const LandscapeLayout(),
    );
  }
}

class PortraitLayout extends StatelessWidget {
  const PortraitLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 32),
          const Text(
            'Cheetah Coding',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('BUTTON 1')),
              const SizedBox(width: 16),
              ElevatedButton(onPressed: () {}, child: const Text('BUTTON 2')),
            ],
          ),
          const SizedBox(height: 32),
          Expanded(
            child: ListView(
              children: const [
                LanguageTile(language: 'Dart'),
                LanguageTile(language: 'JavaScript'),
                LanguageTile(language: 'PHP'),
                LanguageTile(language: 'C++'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LandscapeLayout extends StatelessWidget {
  const LandscapeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Cheetah Coding',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 16),
              ElevatedButton(onPressed: () {}, child: const Text('BUTTON 1')),
              const SizedBox(height: 16),
              ElevatedButton(onPressed: () {}, child: const Text('BUTTON 2')),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: const [
              LanguageTile(language: 'Dart'),
              LanguageTile(language: 'JavaScript'),
              LanguageTile(language: 'PHP'),
              LanguageTile(language: 'C++'),
            ],
          ),
        ),
      ],
    );
  }
}

class LanguageTile extends StatelessWidget {
  final String language;
  const LanguageTile({super.key, required this.language});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        language,
        style: const TextStyle(color: Colors.white),
      ),
      tileColor: Colors.grey[900],
    );
  }
}
