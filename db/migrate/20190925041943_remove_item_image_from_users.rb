class RemoveItemImageFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :item_image_id, :text
  end
end
