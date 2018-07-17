class Crafter < ApplicationRecord
    has_many :gears, dependent: :destroy
    validates :crafter_class, presence: true, length: { minimum: 5}
end
