class Power < ApplicationRecord
    # has_many :heroines_powers
    belongs_to :power
    # has_many :heroines, through: :appointments
    belongs_to :heroine
end
