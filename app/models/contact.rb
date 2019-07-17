class Contact < ApplicationRecord
  belongs_to :contactable, polymorphic: true
  belongs_to :item

  # trying some different things out, need clarity here
  # validates_uniqueness_of :item_id, scope: [:contactable_type, :contactable_id]
  # has_one :email, through: :contacts, source: :contactable, source_type: 'Email'
  # has_one :phone, through: :contacts, source: :contactable, source_type: 'Phone'
  # has_one :text, through: :contacts, source: :contactable, source_type: 'Text'
end
