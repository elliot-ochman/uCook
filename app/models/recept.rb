class Recept < ActiveRecord::Base

  is_impressionable

  has_many :ingredients
  has_many :categories

end
