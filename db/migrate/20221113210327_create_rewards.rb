class CreateRewards < ActiveRecord::Migration[6.1]
  def change
    create_table :rewards do |t|
      t.string :item_name
      t.integer :health_boost
      t.integer :strength_boost
      t.integer :agility_boost
      t.integer :intellect_boost
      t.integer :character_id
      t.integer :monster_id
    end
  end
end
