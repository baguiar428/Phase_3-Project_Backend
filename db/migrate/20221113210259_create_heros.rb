class CreateHeros < ActiveRecord::Migration[6.1]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :spec
      t.integer :health
      t.integer :strength
      t.integer :agility
      t.integer :intellect 
      t.integer :wins
      t.string :image_URL
    end
  end
end
