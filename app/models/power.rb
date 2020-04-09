class Power < ApplicationRecord
    has_many :heroinepowers
    has_many :heroines, through: :powers
end
