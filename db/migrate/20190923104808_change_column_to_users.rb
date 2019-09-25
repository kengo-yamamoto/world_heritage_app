class ChangeColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    def up
      change_column :users, :nick_name, :string, null: false
      change_column :users, :age, :string, null: false
      change_column :users, :job, :string, null: false
      change_column :users, :gender, :string, null: false
      change_column :users, :blood_type, :integer, null: false, default: 0
    end
  
    # 変更前の状態
    def down
      change_column :users, :nick_name, :string, null: true
      change_column :users, :age, :integer, null: true
      change_column :users, :job, :string, null: true
      change_column :users, :gender, :integer, null: true
      change_column :users, :blood_type, :integer, null: true
    end
  end
end
