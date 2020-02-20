class Cocktail < ApplicationRecord
  validates :name, uniqueness: true
  has_many :doses
  has_many :ingredients, through: :doses

end

