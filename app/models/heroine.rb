class Heroine < ApplicationRecord
    has_many :heroine_powers
    has_many :powers, through: :heroine_powers

    validates :name, presence: true
    validates :super_name, presence: true, uniqueness: true

    def power=(power_id)
        @power = Power.find(power_id)
        self.powers << @power
    end

    def power
        @power
    end
end
