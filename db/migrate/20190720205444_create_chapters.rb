class CreateChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :chapters do |t|
      t.string :chapter_name
      t.text :description
      t.integer :chapter_id
      t.timestamps
    end
  end
end
