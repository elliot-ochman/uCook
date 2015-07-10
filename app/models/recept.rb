class Recept < ActiveRecord::Base
  markable_as :favorite
  is_impressionable
  has_many :recept_ingredients
  has_many :ingredients, through: :recept_ingredients
  #has_many :categories

end
