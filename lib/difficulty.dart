import 'package:flutter/material.dart';

class Difficulty extends StatelessWidget {
  final int difficultyLevel;

  const Difficulty({
    super.key,
    required this.difficultyLevel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star,
            size: 20,
            color: difficultyLevel >= 1 ? Colors.amber : Colors.amber[100]),
        Icon(Icons.star,
            size: 20,
            color: difficultyLevel >= 2 ? Colors.amber : Colors.amber[100]),
        Icon(Icons.star,
            size: 20,
            color: difficultyLevel >= 3 ? Colors.amber : Colors.amber[100]),
        Icon(
          Icons.star,
          size: 20,
          color: difficultyLevel >= 4 ? Colors.amber : Colors.amber[100],
        ),
        Icon(
          Icons.star,
          size: 20,
          color: difficultyLevel >= 5 ? Colors.amber : Colors.amber[100],
        ),
      ],
    );
  }
}
