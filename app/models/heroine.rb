class Heroine < ApplicationRecord
    has_many :powers
    validates :name, presence: true
    validates :super_name, presence: true, uniqueness: true
    validates :power_id, presence: true

end
