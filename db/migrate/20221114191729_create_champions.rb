class CreateChampions < ActiveRecord::Migration[6.1]
  def change
      create_table :champions do |t|
      t.string :name
      t.integer :wins
      t.string :image_URL
      t.timestamps
      end
  end
end
