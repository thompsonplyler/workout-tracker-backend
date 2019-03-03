class DailyWorkoutSerializer < UserSessionSerializer
    # attributes :id, :completed, :user_id, :session_id, :session, :user, :session_workouts
    # # :session_workouts
    
    # def user
    #     {user_id: self.object.user.id,
    #         user_name: self.object.user.name
    #     }
    # end

    # def session
    #     {session_id: self.object.session.id,
    #         day: self.object.session.day,
    #         name: self.object.session.name
    #     } 
    # end

    #     def session_workouts
    #     workouts_sort = self.object.session.session_workouts.sort_by{|workout|workout.order} 
        
    #     session_exercises = workouts_sort.map do |session_workout|
    #         session_workout.workout.exercises
    #     end

    #     workouts = workouts_sort.map do |session_workout| 
    #         {component: session_workout.workout.name,
    #             exercises: self.exercises(session_workout.workout.id)}
    #             # exercises: session_workout.workout.workout_exercises}
    #     end
    #     {
    #         workouts: workouts
    #     }
    # end

    # def exercises(workout_id)
    #     exercise_arr = []
    #     exercises = WorkoutExercise.all.select{|we|we.workout_id == workout_id}
    #     exercises.map do |exercise|
            
    #         exercise_obj = {:name => (Exercise.find(exercise.exercise_id)).name, :sets => exercise.set, :reps => exercise.reps, :category => (Exercise.find(exercise.exercise.id)).category, :bi => (Exercise.find(exercise.exercise.id)).bi, :description => (Exercise.find(exercise.exercise.id)).description, :gif_url => (Exercise.find(exercise.exercise.id)).gif_url}
    #         # return exercise 
    #         exercise_arr << exercise_obj
    #     end
    #     return exercise_arr
    # end

end




    # :user
    
    # def user
        
    #     {user_id: self.object.user.id,
    #         user_name: self.object.user.name

    #     }
    # end
