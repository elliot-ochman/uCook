class Recept < ActiveRecord::Base
  markable_as :favorite
  is_impressionable
  has_many :recept_ingredients
  has_many :ingredients, through: :recept_ingredients
  has_one :category

  validates :image, presence: true

  has_attached_file :image, styles: { medium: '300x300>', thumb: '100x100>' }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]

end
