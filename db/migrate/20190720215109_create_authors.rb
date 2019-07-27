class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :author
      t.string :book
      t.integer :number
      t.timestamps
    end
  end
end
