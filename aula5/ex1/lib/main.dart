import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageGridScreen(),
    );
  }
}

class ImageGridScreen extends StatelessWidget {
  const ImageGridScreen({super.key});

  final List<Map<String, String>> places = const [
    {
      'title': 'lostGalaxy',
      'image':
          'https://m.media-amazon.com/images/M/MV5BYTcwMGExMWQtOWE5MC00NTQ2LWFkZGUtOTdiNTJmNzY4ZWI1XkEyXkFqcGc@._V1_.jpg',
    },
    {
      'title': 'timeForce',
      'image':
          'https://m.media-amazon.com/images/M/MV5BYmI4MjE4ZDItMWRmYy00YTcxLTkxM2ItNGUzY2YxYmQwZDdiXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
    },
    {
      'title': 'ninjaStorm',
      'image':
          'https://images.justwatch.com/poster/320852644/s718/power-rangers-ninja-storm.jpg',
    },
    {
      'title': 'lostGalaxy',
      'image':
          'https://m.media-amazon.com/images/M/MV5BYTcwMGExMWQtOWE5MC00NTQ2LWFkZGUtOTdiNTJmNzY4ZWI1XkEyXkFqcGc@._V1_.jpg',
    },
    {
      'title': 'timeForce',
      'image':
          'https://m.media-amazon.com/images/M/MV5BYmI4MjE4ZDItMWRmYy00YTcxLTkxM2ItNGUzY2YxYmQwZDdiXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
    },
    {
      'title': 'ninjaStorm',
      'image':
          'https://images.justwatch.com/poster/320852644/s718/power-rangers-ninja-storm.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GridView de Imagens")),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: places.map((place) {
          return Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(place['image']!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 8,
                bottom: 8,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  color: Colors.black54,
                  child: Text(
                    place['title']!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
