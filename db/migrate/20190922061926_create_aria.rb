class CreateAria < ActiveRecord::Migration[5.2]
  def change
    create_table :aria do |t|
      t.integer :item_id
      t.string :aria_name

      t.timestamps
    end
  end
end
