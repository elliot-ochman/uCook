class ReceptIngredient < ActiveRecord::Base
  belongs_to :recept
  belongs_to :ingredient
end
