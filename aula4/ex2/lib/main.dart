import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomBarWithFab(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomBarWithFab extends StatefulWidget {
  const BottomBarWithFab({super.key});

  @override
  State<BottomBarWithFab> createState() => _BottomBarWithFabState();
}

class _BottomBarWithFabState extends State<BottomBarWithFab> {
  int _selectedIndex = 0;
  bool _showOptions = false;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _toggleFabOptions() {
    setState(() {
      _showOptions = !_showOptions;
    });
  }

  Widget _buildFabOption(
      IconData icon, VoidCallback onPressed, double offsetY) {
    return Positioned(
      bottom: 80 + offsetY,
      right: MediaQuery.of(context).size.width / 2 - 28,
      child: FloatingActionButton(
        mini: true,
        onPressed: onPressed,
        child: Icon(icon),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BottomAppBar with FAB')),
      body: Center(
        child: Text(
          'TAB: $_selectedIndex',
          style: const TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.none, // permite que os botões saiam da área
        children: [
          if (_showOptions) ...[
            _buildFabOption(Icons.phone, () {}, 100),
            _buildFabOption(Icons.email, () {}, 50),
            _buildFabOption(Icons.insert_drive_file, () {}, 0),
          ],
          FloatingActionButton(
            onPressed: _toggleFabOptions,
            child: Icon(_showOptions ? Icons.close : Icons.add),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () => _onItemTapped(0)),
              IconButton(
                  icon: const Icon(Icons.dashboard),
                  onPressed: () => _onItemTapped(1)),
              const SizedBox(width: 48), // espaço para o FAB
              IconButton(
                  icon: const Icon(Icons.info),
                  onPressed: () => _onItemTapped(2)),
              IconButton(
                  icon: const Icon(Icons.warning),
                  onPressed: () => _onItemTapped(3)),
            ],
          ),
        ),
      ),
    );
  }
}
