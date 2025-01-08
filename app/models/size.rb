class Size < ApplicationRecord
  belongs_to :cloth_type

  validates :size_type, presence: true
  validates :size_value, presence: true, numericality: { only_integer: true }
end
