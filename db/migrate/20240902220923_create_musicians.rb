class CreateMusicians < ActiveRecord::Migration[7.1]
  def change
    create_table :musicians do |t|
      t.string :genre
      t.string :daw
      t.integer :experience

      t.timestamps
    end
  end
end
