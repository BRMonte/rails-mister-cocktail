class Cocktail < ApplicationRecord
  validates :name, uniqueness: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

end
