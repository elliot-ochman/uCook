class Ingredient < ActiveRecord::Base
  has_many :recept_ingredients
  has_many :recept, through: :recept_ingredients
end
