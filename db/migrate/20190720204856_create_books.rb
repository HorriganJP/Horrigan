class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.integer :chapter_id
      t.string :chapter
      t.timestamps
    end
    add_index :books, :chapter_id
  end
end
