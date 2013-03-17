class AddAttachmentImageToPins < ActiveRecord::Migration
  def self.up
    change_table :pins do |t|
      t.attachment :image
      add_attachment :users, :image
    end
  end

  def self.down
    drop_attached_file :pins, :image
    remove_attachment :users, :image
  end
end
