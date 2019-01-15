class Duck < ApplicationRecord
    belongs_to :student

    validates :name, :type, presence: true
end
