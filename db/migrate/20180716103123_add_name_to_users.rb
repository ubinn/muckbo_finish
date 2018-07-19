class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :nickname, :string, null: false, default:""
    add_column :users, :major, :string, null: false, default:""
    add_column :users, :another_major, :string
    add_column :users, :sex, :string
    add_column :users, :phone, :string, null: false, default:""
    
    add_index :users, :nickname,             unique: true
    add_index :users, :phone,                unique: true
  end
end