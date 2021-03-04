class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string "title"
      t.string "release"
      t.string "main_cast"
      t.text "description"
      t.timestamps
    end
  end
end
