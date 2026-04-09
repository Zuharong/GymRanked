import '../models/workout_entry.dart';

class RankingService {
  static double getBestWeightFor6Reps(
    List<WorkoutEntry> entries,
    String exerciseId,
  ) {
    final validEntries = entries.where(
      (entry) => entry.exerciseId == exerciseId && entry.reps == 6,
    );

    if (validEntries.isEmpty) return 0;

    return validEntries
        .map((entry) => entry.weight)
        .reduce((a, b) => a > b ? a : b);
  }

  static double calculateMuscleGroupScore(
    List<String> exerciseIds,
    List<WorkoutEntry> entries,
  ) {
    final bestWeights = exerciseIds
        .map((exerciseId) => getBestWeightFor6Reps(entries, exerciseId))
        .where((weight) => weight > 0)
        .toList();

    if (bestWeights.isEmpty) return 0;

    final total = bestWeights.fold(0.0, (sum, weight) => sum + weight);
    return total / bestWeights.length;
  }

  static String getRank(String muscleGroupId, double score) {
    switch (muscleGroupId) {
      case 'biceps':
        if (score >= 22) return 'S';
        if (score >= 20) return 'A';
        if (score >= 18) return 'B+';
        if (score >= 16) return 'B';
        if (score >= 14) return 'B-';
        if (score >= 12) return 'C';
        return 'D';

      case 'chest':
        if (score >= 100) return 'S';
        if (score >= 80) return 'A';
        if (score >= 65) return 'B+';
        if (score >= 50) return 'B';
        if (score >= 40) return 'B-';
        if (score >= 30) return 'C';
        return 'D';

      default:
        return 'D';
    }
  }
}