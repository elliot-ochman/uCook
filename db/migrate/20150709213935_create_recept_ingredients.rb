class CreateReceptIngredients < ActiveRecord::Migration
  def change
    create_table :recept_ingredients do |t|
      t.references :recept, index: true, foreign_key: true
      t.references :ingredient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
