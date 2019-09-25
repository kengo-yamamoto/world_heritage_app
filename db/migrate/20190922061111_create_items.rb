class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :item_name
      t.string :item_image
      t.float :rate

      t.timestamps
    end
  end
end
