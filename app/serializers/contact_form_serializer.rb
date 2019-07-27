class ContactFormSerializer < ActiveModel::Serializer
  attributes :id, :findee_message
  has_one :item
end
