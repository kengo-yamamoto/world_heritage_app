class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.string :item_name
      t.string :item_image
      t.float :rate

      t.timestamps
    end
  end
end
