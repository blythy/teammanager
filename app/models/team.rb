class Team < ApplicationRecord
    has_many :players
    has_one_attached :image

    def city_nickname
        "#{city} #{nickname}"
    end
end
