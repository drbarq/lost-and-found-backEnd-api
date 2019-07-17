class Phone < ApplicationRecord
    has_many :contacts, as: :contactable
end
