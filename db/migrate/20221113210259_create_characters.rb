class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :spec
      t.integer :health
      t.integer :strength
      t.integer :agility
      t.integer :intellect 
    end
  end
end
