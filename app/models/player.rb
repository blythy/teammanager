class Player < ApplicationRecord
  belongs_to :team
  has_many :positionings
  has_many :positions, through: :positionings
  accepts_nested_attributes_for :positions
  def full_name
    "#{first_name} #{last_name}"
  end
end
