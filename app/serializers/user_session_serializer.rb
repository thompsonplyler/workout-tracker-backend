class UserSessionSerializer < ActiveModel::Serializer
    attributes :id, :session, :completed, :user, :workouts
    
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

    def workouts
        session_workouts = self.object.session.session_workouts.map{|session_workout| session_workout}


        {
            workouts: session_workouts
        }
    end

end




    # :user
    
    # def user
        
    #     {user_id: self.object.user.id,
    #         user_name: self.object.user.name

    #     }
    # end
