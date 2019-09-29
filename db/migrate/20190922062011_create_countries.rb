class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :item_id
      t.string :country_name

      t.timestamps
    end
  end
end
