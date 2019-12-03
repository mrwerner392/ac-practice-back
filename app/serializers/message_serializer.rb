class MessageSerializer < ActiveModel::Serializer
  attributes :id, :name, :content
end
