class UserSessionSerializer < ActiveModel::Serializer
    attributes :id, :completed, :user_id, :session_id, :session, :user, :session_workouts
    # :session_workouts
    
    # need session_workout
    # need workout_exercise
    # need user_session

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
                session_workout: session_workout.id,
                exercises: self.exercises(session_workout.workout.id, session_workout.id)}
                # exercises: session_workout.workout.workout_exercises}
        end
        {
            workouts: workouts
        }
    end

    def exercises(workout_id, sw_id)
        exercise_arr = []
        exercises = WorkoutExercise.all.select{|we|we.workout_id == workout_id}
        exercises.map do |exercise|
            
            exercise_obj = {:name => (Exercise.find(exercise.exercise_id)).name, 
                :exercise_id => exercise.exercise_id, 
                :workout_exercise_id => exercise.id, 
                :workout_id => exercise.workout.id, 
                :sets => exercise.set, :reps => exercise.reps, 
                :category => (Exercise.find(exercise.exercise.id)).category, 
                :bi => (Exercise.find(exercise.exercise.id)).bi, 
                :description => (Exercise.find(exercise.exercise.id)).description, 
                :gif_url => (Exercise.find(exercise.exercise.id)).gif_url,
                :user_session_workout_exercise=> self.user_session_workout_exercise(sw_id,exercise.id)}
            # return exercise 
            exercise_arr << exercise_obj
        end
        return exercise_arr
    end

    def user_session_workout_exercise(s_workout, w_exercise)
        us_filter = self.object.user_session_workout_exercises
        we_filter = us_filter.select{|uswe| uswe.workout_exercise_id==w_exercise}
        sw_filter = we_filter.select{|uswe| uswe.session_workout_id==s_workout}
        
        if sw_filter.length>0
            return {id: sw_filter[0].id,
                input: sw_filter[0].input,
                note: sw_filter[0].note,
                flag: sw_filter[0].flag
            }
        else
            return false
        end
    end

end




    # :user
    
    # def user
        
    #     {user_id: self.object.user.id,
    #         user_name: self.object.user.name

    #     }
    # end
