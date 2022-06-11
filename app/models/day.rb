class Day < ApplicationRecord
    validates :done, presence: true

    scope :ordered, -> { order(id: :desc)}
    after_create_commit -> { broadcast_prepend_to "days", partial: "days/day", locals: { day: self }, target: "days" }

    
    
end
