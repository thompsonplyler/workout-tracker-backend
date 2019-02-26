class SessionWorkoutSerializer < ActiveModel::Serializer
    attributes :id, :session_id, :workout_id, :order, :session, :workout, :workout_exercise

    def session
        {
            id: self.object.session.id,
            day: self.object.session.day,
            name: self.object.session.name

        }
    end

    def workout
        {id: self.object.workout.id,
        component: self.object.workout.component,
        name: self.object.workout.name}
    end

    def workout_exercise
        {
            workout_exercise: self.object.workout.workout_exercises
        }
    end
  end
  