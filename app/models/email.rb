class Email < ApplicationRecord
    has_many :contacts, as: :contactable
end

