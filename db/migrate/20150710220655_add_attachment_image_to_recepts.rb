class AddAttachmentImageToRecepts < ActiveRecord::Migration
  def self.up
    change_table :recepts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :recepts, :image
  end
end
