import '../models/muscle_group.dart';
import '../models/exercise.dart';
import '../models/workout_entry.dart';

final List<MuscleGroup> muscleGroups = [
  MuscleGroup(
    id: 'biceps',
    name: 'Biceps',
    exerciseIds: ['dumbbell_curl', 'barbell_curl'],
  ),
  MuscleGroup(
    id: 'triceps',
    name: 'Triceps',
    exerciseIds: ['dumbbell_skull_crusher', 'cable_triceps_extension'],
  ),
  MuscleGroup(
    id: 'chest',
    name: 'Chest',
    exerciseIds: ['bench_press', 'incline_db_press'],
  ),
  MuscleGroup(
    id: 'back',
    name: 'Back',
    exerciseIds: ['cable_pull_down', 'machine_row'],
  ),
  MuscleGroup(
    id: 'shoulders',
    name: 'Shoulders',
    exerciseIds: ['overhead_press', 'lateral_raise'],
  ),
  MuscleGroup(
    id: 'legs',
    name: 'Legs',
    exerciseIds: ['squat', 'leg_press'],
  ),
];

final List<Exercise> exercises = [
  Exercise(
    //Biceps
    id: 'dumbbell_curl',
    name: 'Dumbbell Curl',
    muscleGroupId: 'biceps',
  ),
  Exercise(
    id: 'barbell_curl',
    name: 'Barbell Curl',
    muscleGroupId: 'biceps',
  ),

  //triceps
  Exercise(
    id: 'dumbbell_skull_crusher',
    name: 'Dumbbell Skull Crusher',
    muscleGroupId: 'triceps',
  ),
  Exercise(
    id: 'cable_triceps_extension',
    name: 'Cable Triceps Extension',
    muscleGroupId: 'triceps',
  ),

  //chest
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

  //back
  Exercise(
    id: 'cable_pull_down',
    name: 'Cable Pull-Down',
    muscleGroupId: 'back',
  ),
  Exercise(
    id: 'machine_row',
    name: 'Machine Row',
    muscleGroupId: 'back',
  ),

  //shoulders
  Exercise(
    id: 'overhead_press',
    name: 'Overhead Press',
    muscleGroupId: 'shoulders',
  ),
  Exercise(
    id: 'lateral_raise',
    name: 'Lateral Raise',
    muscleGroupId: 'shoulders',
  ),

  //legs
  Exercise(
    id: 'squat',
    name: 'Squat',
    muscleGroupId: 'legs',
  ),
  Exercise(
    id: 'leg_press',
    name: 'Leg Press',
    muscleGroupId: 'legs',
  ),

];

//inserts 
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