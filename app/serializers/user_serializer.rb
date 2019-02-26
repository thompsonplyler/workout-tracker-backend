class UserSerializer < ActiveModel::Serializer
  attributes :name, :password_digest, :email
end
