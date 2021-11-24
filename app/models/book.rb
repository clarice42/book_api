class Book < ApplicationRecord
    validates :name, :description, presence: true
end
