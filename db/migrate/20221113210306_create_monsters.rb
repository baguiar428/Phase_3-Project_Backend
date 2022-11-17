class CreateMonsters < ActiveRecord::Migration[6.1]
  def change
    create_table :monsters do |t|
      t.string :name
      t.integer :health
      t.integer :strength
      t.integer :agility
      t.integer :intellect
      t.integer :map_id
      t.boolean :defeated
      t.string :image
    end
  end
end
