Session.delete_all
User.delete_all
Exercise.delete_all
WorkoutExercise.delete_all
Workout.delete_all
SessionWorkout.delete_all


# Users are users 
User.create(name: "Thompson", email: "thompson@thompsonplyler.com", password: "password")
User.create(name: "Joann", email: "joannlpan@gmail.com", password: "password")
thompson = User.find_by(name: "Thompson")


# Sessions correspond to days of the program. A session is a day at the gym. 
Session.create(day: 1, name: "Foundational Power A, Session 1")
Session.create(day: 2, name: "Movement Day")
Session.create(day: 3, name: "Foundational Power B, Session 1")
Session.create(day: 4, name: "Movement Day")
Session.create(day: 5, name: "Foundational Power A, Session 2")
Session.create(day: 6, name: "Regeneration Day")
Session.create(day: 7, name: "Foundational Power B, Session 2")
Session.create(day: 8, name: "Movement Day")
Session.create(day: 9, name: "Foundational Power A, Session 3")
Session.create(day: 10, name: "Movement Day")
Session.create(day: 11, name: "Foundational Power A, Session 3")
Session.create(day: 12, name: "Regeneration Day")
Session.create(day: 13, name: "Power 1A, Session 1")
Session.create(day: 14, name: "Movement Day")
Session.create(day: 15, name: "Power 1B, Session 1")
Session.create(day: 16, name: "Movement Day")
Session.create(day: 17, name: "Power 1C, Session 1")
Session.create(day: 18, name: "Regeneration Day")
Session.create(day: 19, name: "Power 1A, Session 2")
Session.create(day: 20, name: "Movement Day")
Session.create(day: 21, name: "Power 1B, Session 2")
Session.create(day: 22, name: "Movement Day")
Session.create(day: 23, name: "Power 1C, Session 2")
Session.create(day: 24, name: "Regeneration Day")
Session.create(day: 25, name: "Power 1A, Session 3")
Session.create(day: 26, name: "Movement Day")
Session.create(day: 27, name: "Power 1B, Session 3")
Session.create(day: 28, name: "Movement Day")
Session.create(day: 29, name: "Power 1C, Session 3")
Session.create(day: 30, name: "Regeneration Day")
Session.create(day: 31, name: "Foundational Power A, Session 1")
Session.create(day: 32, name: "Movement Day")
Session.create(day: 33, name: "Foundational Power B, Session 1")
Session.create(day: 34, name: "Movement Day")
Session.create(day: 35, name: "Foundational Power A, Session 2")
Session.create(day: 36, name: "Regeneration Day")
Session.create(day: 37, name: "Foundational Power B, Session 2")
Session.create(day: 38, name: "Movement Day")
Session.create(day: 39, name: "Foundational Power A, Session 3")
Session.create(day: 40, name: "Movement Day")
Session.create(day: 41, name: "Foundational Power A, Session 3")
Session.create(day: 42, name: "Regeneration Day")
Session.create(day: 43, name: "Power 2A, Session 1")
Session.create(day: 44, name: "Movement Day")
Session.create(day: 45, name: "Power 2B, Session 1")
Session.create(day: 46, name: "Movement Day")
Session.create(day: 47, name: "Power 2C, Session 1")
Session.create(day: 48, name: "Regeneration Day")
Session.create(day: 49, name: "Power 2A, Session 2")
Session.create(day: 50, name: "Movement Day")
Session.create(day: 51, name: "Power 2B, Session 2")
Session.create(day: 52, name: "Movement Day")
Session.create(day: 53, name: "Power 2C, Session 2")
Session.create(day: 54, name: "Regeneration Day")
Session.create(day: 55, name: "Power 2A, Session 3")
Session.create(day: 56, name: "Movement Day")
Session.create(day: 57, name: "Power 2B, Session 3")
Session.create(day: 58, name: "Movement Day")
Session.create(day: 59, name: "Power 2C, Session 3")
Session.create(day: 60, name: "Regeneration Day")
Session.create(day: 61, name: "Foundational Power A, Session 1")
Session.create(day: 62, name: "Movement Day")
Session.create(day: 63, name: "Foundational Power B, Session 1")
Session.create(day: 64, name: "Movement Day")
Session.create(day: 65, name: "Foundational Power A, Session 2")
Session.create(day: 66, name: "Regeneration Day")
Session.create(day: 67, name: "Foundational Power B, Session 2")
Session.create(day: 68, name: "Movement Day")
Session.create(day: 69, name: "Foundational Power A, Session 3")
Session.create(day: 70, name: "Movement Day")
Session.create(day: 71, name: "Foundational Power A, Session 3")
Session.create(day: 72, name: "Regeneration Day")
Session.create(day: 73, name: "Power 3A, Session 1")
Session.create(day: 74, name: "Movement Day")
Session.create(day: 75, name: "Power 3B, Session 1")
Session.create(day: 76, name: "Movement Day")
Session.create(day: 77, name: "Power 3C, Session 1")
Session.create(day: 78, name: "Regeneration Day")
Session.create(day: 79, name: "Power 3A, Session 2")
Session.create(day: 80, name: "Movement Day")
Session.create(day: 81, name: "Power 3B, Session 2")
Session.create(day: 82, name: "Movement Day")
Session.create(day: 83, name: "Power 3C, Session 2")
Session.create(day: 84, name: "Regeneration Day")
Session.create(day: 85, name: "Power 3A, Session 3")
Session.create(day: 86, name: "Movement Day")
Session.create(day: 87, name: "Power 3B, Session 3")
Session.create(day: 88, name: "Movement Day")
Session.create(day: 89, name: "Power 3C, Session 3")
Session.create(day: 90, name: "Regeneration Day")
Session.create(day: 91, name: "Foundational Power A, Session 1")
Session.create(day: 92, name: "Movement Day")
Session.create(day: 93, name: "Foundational Power B, Session 1")
Session.create(day: 94, name: "Movement Day")
Session.create(day: 95, name: "Foundational Power A, Session 2")
Session.create(day: 96, name: "Regeneration Day")
Session.create(day: 97, name: "Foundational Power B, Session 2")
Session.create(day: 98, name: "Movement Day")
Session.create(day: 99, name: "Foundational Power A, Session 3")
Session.create(day: 100, name: "Movement Day")
Session.create(day: 101, name: "Foundational Power A, Session 3")
Session.create(day: 102, name: "Regeneration Day")
Session.create(day: 103, name: "Power 4A, Session 1")
Session.create(day: 104, name: "Movement Day")
Session.create(day: 105, name: "Power 4B, Session 1")
Session.create(day: 106, name: "Movement Day")
Session.create(day: 107, name: "Power 4C, Session 1")
Session.create(day: 108, name: "Regeneration Day")
Session.create(day: 109, name: "Power 4A, Session 2")
Session.create(day: 110, name: "Movement Day")
Session.create(day: 111, name: "Power 4B, Session 2")
Session.create(day: 112, name: "Movement Day")
Session.create(day: 113, name: "Power 4C, Session 2")
Session.create(day: 114, name: "Regeneration Day")
Session.create(day: 115, name: "Power 4A, Session 3")
Session.create(day: 116, name: "Movement Day")
Session.create(day: 117, name: "Power 4B, Session 3")
Session.create(day: 118, name: "Movement Day")
Session.create(day: 119, name: "Power 4C, Session 3")
Session.create(day: 120, name: "Regeneration Day")

day_1 = Session.find_by(name: "Foundational Power A, Session 1")

# A workout is a section of a session. Workouts can be shared between sessions. 
Workout.create(component: "Pillar Prep", name: "Pillar Prep")
Workout.create(component: "Movement Prep", name: "Movement Prep")
Workout.create(component: "Plyometrics", name: "Plyometrics")
Workout.create(component: "Relative Power", name: "Total Body Power")
Workout.create(component: "Relative Power", name: "Primary Power")
Workout.create(component: "Relative Power", name: "Secondary Power")
Workout.create(component: "Relative Power", name: "Rotational Power")
Workout.create(component: "ESD", name: "ESD")
Workout.create(component: "Movement Skills", name: "Movement Skills - Multidirectional")
Workout.create(component: "Movement Skills", name: "Movement Skills - Linear")
Workout.create(component: "Movement Skills", name: "Movement Skills - Combination")
Workout.create(component: "Regeneration", name: "Regeneration - General")
Workout.create(component: "Regeneration", name: "Regeneration - Hip pain")
Workout.create(component: "Regeneration", name: "Regeneration - Flexibility")
Workout.create(component: "Regeneration", name: "Regeneration - Knee Pain")
Workout.create(component: "Regeneration", name: "Regeneration - Upper Back/Shoulder Pain")
Workout.create(component: "Regeneration", name: "Regeneration - Self Massage")
Workout.create(component: "Regeneration", name: "Regeneration - Hip Pain")

total_power_1 = Workout.find_by(name: "Total Body Power")

SessionWorkout.create(session_id: day_1.id, workout_id: total_power_1.id, workout_order: 4)

Exercise.create(name: "Overhead Rotational Squat - 1 Arm Kettlebell", description: "Poop", category: "rep_weight")
Exercise.create(name: "Lateral Pillar Bridge to Row w/ Hip Flexion", description: "Bloop", category: "rep_weight")
Exercise.create(name: "Deep Squat to Hamstring Stretch", description: "Shoop", category: "rep_null")


ohr_squat_1 = Exercise.find_by(name: "Overhead Rotational Squat - 1 Arm Kettlebell")
lpb_flexion_1 = Exercise.find_by(name: "Lateral Pillar Bridge to Row w/ Hip Flexion")
d_squat_hamstr_1 = Exercise.find_by(name: "Deep Squat to Hamstring Stretch" )

WorkoutExercise.create(workout_id: total_power_1.id, exercise_id: ohr_squat_1.id, reps: 9, set: 2)
WorkoutExercise.create(workout_id: total_power_1.id, exercise_id: lpb_flexion_1.id, reps: 6, set: 2)
WorkoutExercise.create(workout_id: total_power_1.id,exercise_id: d_squat_hamstr_1.id, reps: 6, set: 2)










