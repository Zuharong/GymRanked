class WorkoutEntry {
  final String id;
  final String exerciseId;
  final double weight;
  final int reps;
  final DateTime date;

  WorkoutEntry({
    required this.id,
    required this.exerciseId,
    required this.weight,
    required this.reps,
    required this.date,
  });
}