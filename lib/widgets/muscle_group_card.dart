import 'package:flutter/material.dart';

class MuscleGroupCard extends StatelessWidget {
  final String name;
  final double score;
  final String rank;
  final VoidCallback onTap;

  const MuscleGroupCard({
    super.key,
    required this.name,
    required this.score,
    required this.rank,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(name),
        subtitle: Text('Score: ${score.toStringAsFixed(1)} kg'),
        trailing: Text(
          rank,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}