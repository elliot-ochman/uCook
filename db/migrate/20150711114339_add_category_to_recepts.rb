class AddCategoryToRecepts < ActiveRecord::Migration
  def change
    add_reference :recepts, :category, index: true, foreign_key: true
  end
end
