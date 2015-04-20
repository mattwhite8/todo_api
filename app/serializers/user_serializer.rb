class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :username
end
