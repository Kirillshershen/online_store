class ClothType < ApplicationRecord
    has_many :clothes
    has_many :sizes, dependent: :destroy
  end