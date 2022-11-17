puts "🌱 Destroying Heros..."
Hero.destroy_all

puts "🌱 Destroying Monsters..."
Monster.destroy_all

puts "🌱 Destroying Maps..."
Map.destroy_all

puts "🌱 Destroying Rewards..."
Reward.destroy_all


# puts "🌱 Seeding Heroes..."
# Hero.create(
#     name: "", 
#     spec: "spec", 
#     health: nil, 
#     strength: nil, 
#     agility: nil, 
#     intellect: nil,
#     wins: nil,
#     image_URL: nil
#     )
    

puts "🌱 Seeding Maps..."
Map.create(name: "The Sea of Peril", image_URL: "TheSeaofPeril", played: false)
Map.create(name: "Skypia", image_URL: "Skypia", played: false)
Map.create(name: "Mount Doom", image_URL: "MountDoom", played: false)
Map.create(name: "The Halls of Stone", image_URL: "TheHallsofStone", played:false )
Map.create(name: "The Dark Woods", image_URL: "TheDarkWoods", played: false)
    
puts "🌱 Seeding Monsters..."

Monster.create(
    name: "Spout Dragon", 
    health: "30", 
    strength: "7", 
    agility: "7", 
    intellect: "7",
    map_id: Map.first.id,
    defeated: false
    )

Monster.create(
    name: "Crock-O-Delicous", 
    health: "20", 
    strength: "5", 
    agility: "7", 
    intellect: "3",
    map_id: Map.first.id,
    defeated: false
    )    

    
Monster.create(
    name: "Kraken", 
    health: "30", 
    strength: "8", 
    agility: "1", 
    intellect: "8",
    map_id: Map.first.id,
    defeated: false
    )
        
Monster.create(
    name: "Flying Mastadon", 
    health: "40", 
    strength: "10", 
    agility: "3", 
    intellect: "3",
    map_id: Map.second.id,
    defeated: false
    )

Monster.create(
    name: "Razor Beak", 
    health: "10", 
    strength: "1", 
    agility: "10", 
    intellect: "1",
    map_id: Map.second.id,
    defeated: false
    )

Monster.create(
    name: "Swift Spirit", 
    health: "15", 
    strength: "2", 
    agility: "8", 
    intellect: "10",
    map_id: Map.second.id,
    defeated: false
    )

Monster.create(
    name: "Fire Dragon", 
    health: "30", 
    strength: "7", 
    agility: "7", 
    intellect: "7",
    map_id: Map.third.id,
    defeated: false
    )

Monster.create(
    name: "Lava Blob", 
    health: "50", 
    strength: "3", 
    agility: "1", 
    intellect: "1",
    map_id: Map.third.id,
    defeated: false
    )

Monster.create(
    name: "Fire Sprite", 
    health: "15", 
    strength: "4", 
    agility: "6", 
    intellect: "9",
    map_id: Map.third.id,
    defeated: false
    )

Monster.create(
    name: "Rock Lobster", 
    health: "25", 
    strength: "7", 
    agility: "6", 
    intellect: "6",
    map_id: Map.fourth.id,
    defeated: false
    )

Monster.create(
    name: "Golem", 
    health: "40", 
    strength: "4", 
    agility: "5", 
    intellect: "8",
    map_id: Map.fourth.id,
    defeated: false
    )

Monster.create(
    name: "Stoner", 
    health: "25", 
    strength: "4", 
    agility: "5", 
    intellect: "1",
    map_id: Map.fourth.id,
    defeated: false
    )

Monster.create(
    name: "Mystic Stag", 
    health: "20", 
    strength: "5", 
    agility: "7", 
    intellect: "6",
    map_id: Map.fifth.id,
    defeated: false
    )

Monster.create(
    name: "Mud Dragon", 
    health: "25", 
    strength: "7", 
    agility: "6", 
    intellect: "6",
    map_id: Map.fifth.id,
    defeated: false
    )

Monster.create(
    name: "Furious Ent", 
    health: "35", 
    strength: "7", 
    agility: "1", 
    intellect: "4",
    map_id: Map.fifth.id,
    defeated: false
    )

puts "🌱 Seeding Rewards..."
100.times do
    Reward.create(item_name: Faker::Games::Dota.item, 
    health_boost: rand(0..3), 
    strength_boost: rand(0..3), 
    agility_boost: rand(0..3), 
    intellect_boost: rand(0..3), 
    hero_id: nil, 
    monster_id: Monster.all.ids.sample)
end 

puts "✅ Done seeding!"
