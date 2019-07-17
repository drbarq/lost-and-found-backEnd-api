class Text < ApplicationRecord
    has_many :contacts, as: :contactable
end
