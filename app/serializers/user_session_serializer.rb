class UserSessionSerializer < ActiveModel::Serializer
    attributes :id, :completed, :user_id, :session_id, :session, :user, :session_workouts
    
    def user
        {user_id: self.object.user.id,
            user_name: self.object.user.name
        }
    end

    def session
        {session_id: self.object.session.id,
            day: self.object.session.day,
            name: self.object.session.name
        } 
    end

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
        return exercises.map do |exercise|
            
            exercise_obj = {:name => (Exercise.find(exercise.exercise_id)).name}
            # return exercise 
            exercise_arr << exercise_obj
        end
        return exercise_arr
    end

end




    # :user
    
    # def user
        
    #     {user_id: self.object.user.id,
    #         user_name: self.object.user.name

    #     }
    # end
