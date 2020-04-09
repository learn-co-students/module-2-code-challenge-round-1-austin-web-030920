class Heroine < ApplicationRecord
    has_many :powers, through: :heroine_powers
    validates_presence_of :name, :super_name
    validates :super_name, uniqueness: :true
end
