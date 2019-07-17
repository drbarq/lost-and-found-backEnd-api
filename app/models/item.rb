class Item < ApplicationRecord
    belongs_to :user
    # has_one :contact
    has_many :contacts
    # has_one :email, through: :contacts, source: :contactable, source_type: 'Email'
    # has_one :phone, through: :contacts, source: :contactable, source_type: 'Phone'
    # has_one :text, through: :contacts, source: :contactable, source_type: 'Text'  
end
