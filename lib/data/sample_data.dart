import '../models/muscle_group.dart';
import '../models/exercise.dart';
import '../models/workout_entry.dart';

final List<MuscleGroup> muscleGroups = [
  MuscleGroup(
    id: 'biceps',
    name: 'Biceps',
    exerciseIds: ['bicep_curl', 'hammer_curl'],
  ),
  MuscleGroup(
    id: 'chest',
    name: 'Chest',
    exerciseIds: ['bench_press', 'incline_db_press'],
  ),
];

final List<Exercise> exercises = [
  Exercise(
    id: 'bicep_curl',
    name: 'Bicep Curl',
    muscleGroupId: 'biceps',
  ),
  Exercise(
    id: 'hammer_curl',
    name: 'Hammer Curl',
    muscleGroupId: 'biceps',
  ),
  Exercise(
    id: 'bench_press',
    name: 'Bench Press',
    muscleGroupId: 'chest',
  ),
  Exercise(
    id: 'incline_db_press',
    name: 'Incline Dumbbell Press',
    muscleGroupId: 'chest',
  ),
];

final List<WorkoutEntry> workoutEntries = [
  WorkoutEntry(
    id: '1',
    exerciseId: 'bicep_curl',
    weight: 14,
    reps: 6,
    date: DateTime(2026, 4, 1),
  ),
  WorkoutEntry(
    id: '2',
    exerciseId: 'bicep_curl',
    weight: 16,
    reps: 5,
    date: DateTime(2026, 4, 2),
  ),
  WorkoutEntry(
    id: '3',
    exerciseId: 'hammer_curl',
    weight: 16,
    reps: 6,
    date: DateTime(2026, 4, 3),
  ),
  WorkoutEntry(
    id: '4',
    exerciseId: 'bench_press',
    weight: 60,
    reps: 6,
    date: DateTime(2026, 4, 4),
  ),
  WorkoutEntry(
    id: '5',
    exerciseId: 'incline_db_press',
    weight: 22,
    reps: 6,
    date: DateTime(2026, 4, 5),
  ),
];