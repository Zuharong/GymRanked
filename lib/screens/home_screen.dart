import 'package:flutter/material.dart';
import '../data/sample_data.dart';
import '../services/ranking_service.dart';
import '../widgets/muscle_group_card.dart';
import 'muscle_group_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gym Rankings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: muscleGroups.length,
    itemBuilder: (context, index) {
            final group = muscleGroups[index];

            final score = RankingService.calculateMuscleGroupScore(
              group.exerciseIds,
              workoutEntries,
            );

            final rank = RankingService.getRank(group.id, score);

            return MuscleGroupCard(
              name: group.name,
              score: score,
              rank: rank,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MuscleGroupDetailScreen(
                      muscleGroup: group,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}