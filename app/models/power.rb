class Power < ApplicationRecord
    has_many :heroines, through: :heroine_powers
end
