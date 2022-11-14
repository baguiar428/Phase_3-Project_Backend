puts "🌱 Destroying Characters..."
Character.destroy_all

puts "🌱 Destroying Monsters..."
Monster.destroy_all

puts "🌱 Destroying Maps..."
Map.destroy_all

puts "🌱 Destroying Rewards..."
Reward.destroy_all


puts "🌱 Seeding Characters..."
Character.create(
    name: "New Character", 
    spec: "spec", 
    health: 0, 
    strength: 0, 
    agility: 0, 
    intellect: 0
    )
    

puts "🌱 Seeding Maps..."
Map.create(name: "Sea of Peril")
Map.create(name: "Skypia")
Map.create(name: "Mount Doom")
Map.create(name: "The Dark Woods")
Map.create(name: "The Halls of Stone")
    
puts "🌱 Seeding Monsters..."
Monster.create(
    name: "Spout Dragon", 
    health: "30", 
    strength: "7", 
    agility: "7", 
    intellect: "7",
    map_id: 1,
    defeated?: false
    )

Monster.create(
    name: "Mega Whale", 
    health: "40", 
    strength: "10", 
    agility: "3", 
    intellect: "3",
    map_id: 1,
    defeated?: false
    )

Monster.create(
    name: "Kraken", 
    health: "30", 
    strength: "8", 
    agility: "1", 
    intellect: "8",
    map_id: 1,
    defeated?: false
    )

Monster.create(
    name: "Mini Minnow", 
    health: "10", 
    strength: "1", 
    agility: "10", 
    intellect: "1",
    map_id: 1,
    defeated?: false
    )

Monster.create(
    name: "Splashing Spirit", 
    health: "15", 
    strength: "2", 
    agility: "8", 
    intellect: "10",
    map_id: 1,
    defeated?: false
    )

Monster.create(
    name: "Crock-O-Delicous", 
    health: "20", 
    strength: "5", 
    agility: "7", 
    intellect: "3",
    map_id: 1,
    defeated?: false
    )

Monster.create(
    name: "Clammy", 
    health: "50", 
    strength: "3", 
    agility: "1", 
    intellect: "1",
    map_id: 1,
    defeated?: false
    )

Monster.create(
    name: "Mermadeline", 
    health: "15", 
    strength: "4", 
    agility: "6", 
    intellect: "9",
    map_id: 1,
    defeated?: false
    )

Monster.create(
    name: "Sea Serpent", 
    health: "20", 
    strength: "7", 
    agility: "6", 
    intellect: "6",
    map_id: 1,
    defeated?: false
    )

Monster.create(
    name: "Siren", 
    health: "20", 
    strength: "4", 
    agility: "5", 
    intellect: "8",
    map_id: 1,
    defeated?: false
    )

puts "🌱 Seeding Rewards..."
50.times do
    Reward.create(item_name: Faker::Games::Dota.item, health_boost: rand(0..3), strength_boost: rand(0..3), agility_boost: rand(0..3), intellect_boost: rand(0..3), character_id: nil, monster_id: Monster.all.ids.sample)
end 

puts "✅ Done seeding!"
