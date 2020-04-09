class Power < ApplicationRecord
    has_many :heronepowers
    has_many :powers, through: :heronepowers
end
