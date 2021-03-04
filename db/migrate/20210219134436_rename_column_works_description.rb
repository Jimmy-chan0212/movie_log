class RenameColumnWorksDescription < ActiveRecord::Migration[6.0]
  def change
    rename_column :works, :tdescription, :description
  end
end
