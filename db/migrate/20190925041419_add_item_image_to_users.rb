class AddItemImageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :item_image_id, :text
  end
end
