class Item < ApplicationRecord
    belongs_to :user
    has_many :contacts
    has_many :contact_forms
end
