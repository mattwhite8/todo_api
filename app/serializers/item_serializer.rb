class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :list_id
end
