class AddInfomation < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nick_name, :string
    add_column :users, :address, :string
    add_column :users, :birth_day, :string
    add_column :users, :description, :text
    add_column :users, :image, :string
  end
end
