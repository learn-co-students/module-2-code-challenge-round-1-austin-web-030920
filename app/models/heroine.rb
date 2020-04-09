class Heroine < ApplicationRecord
    has_many :heroine_powers
    has_many :powers, through: :heroin_powers
	validates :name, uniqueness: true
	validates :super_name, uniqueness: true

end
