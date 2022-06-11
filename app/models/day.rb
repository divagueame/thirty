class Day < ApplicationRecord
    validates :done, presence: true

    scope :ordered, -> { order(id: :desc)}
end
