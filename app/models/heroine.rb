class Heroine < ApplicationRecord
    has_many :heroinepowers
    has_many :powers, through: :heroinepowers
    validates :name, presence: true
    validates :super_name, presence: true, uniqueness: true
end
