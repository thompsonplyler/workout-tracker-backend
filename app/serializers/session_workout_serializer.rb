class SessionWorkoutSerializer < ActiveModel::Serializer
    attributes :id, :session_id, :workout_id, :order, :session,
    def session
        {
            id: self.object.session.id,
            day: self.object.session.day,
            name: self.object.session.name
        }
    end

    # def workout
    #     {id: self.object.workout.id,
    #     component: self.object.workout.component,
    #     name: self.object.workout.name}
    # end

    def session_workouts
        workouts_sort = self.object.session.session_workouts.sort_by{|workout|workout.order} 
        
        session_exercises = workouts_sort.map do |session_workout|
            session_workout.workout.exercises
        end

        workouts = workouts_sort.map do |session_workout| 
            {component: session_workout.workout.name,
                exercises: self.exercises(session_workout.workout.id)}
                # exercises: session_workout.workout.workout_exercises}
        end
        {
            workouts: workouts
        }
    end

    def exercises(workout_id)
        exercise_arr = []
        exercises = WorkoutExercise.all.select{|we|we.workout_id == workout_id}
        exercises.map do |exercise|
            
            exercise_obj = {:name => (Exercise.find(exercise.exercise_id)).name, :sets => exercise.set, :reps => exercise.reps, :category => (Exercise.find(exercise.exercise.id)).category, :bi => (Exercise.find(exercise.exercise.id)).bi, :description => (Exercise.find(exercise.exercise.id)).description, :gif_url => (Exercise.find(exercise.exercise.id)).gif_url}
            # return exercise 
            exercise_arr << exercise_obj
        end
        return exercise_arr
    end

    # def workout_exercise
    #     {
    #         workout_exercise: self.object.workout.workout_exercises
    #     }
    # end
  end
  