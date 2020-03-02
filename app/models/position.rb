class Position < ApplicationRecord
    has_many :positionings
    has_many :players, through: :positionings
    accepts_nested_attributes_for :players
end
