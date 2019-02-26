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
                exercises: session_workout.workout.workout_exercises}
                # exercises: session_workout.workout.workout_exercises}
        end


        {
            workouts: workouts
        }
    end

    def exercises
        workouts_sort = self.object.session.session_workouts.sort_by{|workout|workout.order}
        
        exercises = workouts_sort.map do |session_workout|
            {exercises: session_workout.workout.workout_exercises}
        end
    end

end




    # :user
    
    # def user
        
    #     {user_id: self.object.user.id,
    #         user_name: self.object.user.name

    #     }
    # end
