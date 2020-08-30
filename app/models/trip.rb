class Trip < ApplicationRecord
    has_many :food, dependent: :destroy
end
