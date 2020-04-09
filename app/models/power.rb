class Power < ApplicationRecord
    has_many :heroine_powers
    has_many :heroines, through: :heroine_powers

    def heroine_count
        self.heroines.count
    end

    def heroines=(ids)
        ids.each do |id|
            @heroine = Heroine.find(id)
            self.heroines << @heroine
        end
    end
end
