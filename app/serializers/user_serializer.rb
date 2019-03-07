class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :user_sessions
  # , :user_sessions

  has_many :user_sessions, serializer: UserSessionSerializer

  def user_sessions
    self.object.user_sessions.sort_by{|us|us.session.day}
  end
end
