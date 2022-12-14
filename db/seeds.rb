puts "🌱 Destroying Heros..."
Hero.destroy_all

puts "🌱 Destroying Champions..."
Champion.destroy_all

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
Map.create(name: "Sea of Peril", image_URL: "TheSeaofPeril", played: false)
Map.create(name: "Skypia", image_URL: "Skypia", played: false)
Map.create(name: "Mount Doom", image_URL: "MountDoom", played: false)
Map.create(name: "Halls of Stone", image_URL: "TheHallsofStone", played:false )
Map.create(name: "Dark Woods", image_URL: "TheDarkWoods", played: false)
Map.create(name: "Diamond Depths", image_URL: "DiamondDepths", played: false)
    
puts "🌱 Seeding Monsters..."

Monster.create(
    name: "Spout Dragon", 
    health: "25", 
    strength: "4", 
    agility: "4", 
    intellect: "4",
    map_id: Map.first.id,
    defeated: false,
    image: "SpoutDragon"
    )

Monster.create(
    name: "Crock-O-Delicous", 
    health: "25", 
    strength: "7", 
    agility: "4", 
    intellect: "2",
    map_id: Map.first.id,
    defeated: false,
    image: "Crock-o-Delicous"
    )    

    
Monster.create(
    name: "BOSS: Kraken", 
    health: "30", 
    strength: "7", 
    agility: "4", 
    intellect: "7",
    map_id: Map.first.id,
    defeated: false,
    image: "Kraken"
    )
        
Monster.create(
    name: "Swift Spirit", 
    health: "30", 
    strength: "10", 
    agility: "5", 
    intellect: "5",
    map_id: Map.second.id,
    defeated: false,
    image: "SwiftSpirit"
    )

Monster.create(
    name: "Razor Beak", 
    health: "30", 
    strength: "5", 
    agility: "10", 
    intellect: "5",
    map_id: Map.second.id,
    defeated: false,
    image: "RazorBeak"
    )

Monster.create(
    name: "BOSS: Flying Mastodon", 
    health: "40", 
    strength: "10", 
    agility: "8", 
    intellect: "10",
    map_id: Map.second.id,
    defeated: false,
    image: "FlyingMastodon"
    )

Monster.create(
    name: "Fire Sprite", 
    health: "40", 
    strength: "8", 
    agility: "6", 
    intellect: "8",
    map_id: Map.third.id,
    defeated: false,
    image: "FireSprite"
    )

Monster.create(
    name: "Lava Blob", 
    health: "40", 
    strength: "20", 
    agility: "4", 
    intellect: "4",
    map_id: Map.third.id,
    defeated: false,
    image: "LavaBlob"
    )

Monster.create(
    name: "BOSS: Fire Dragon", 
    health: "50", 
    strength: "15", 
    agility: "9", 
    intellect: "10",
    map_id: Map.third.id,
    defeated: false,
    image: "FireDragon"
    )

Monster.create(
    name: "Rock Lobster", 
    health: "25", 
    strength: "5", 
    agility: "6", 
    intellect: "2",
    map_id: Map.fourth.id,
    defeated: false,
    image: "RockLobster"
    )

Monster.create(
    name: "Golem", 
    health: "25", 
    strength: "11", 
    agility: "1", 
    intellect: "1",
    map_id: Map.fourth.id,
    defeated: false,
    image: "Golem"
    )

Monster.create(
    name: "BOSS: Stoner", 
    health: "30", 
    strength: "8", 
    agility: "9", 
    intellect: "2",
    map_id: Map.fourth.id,
    defeated: false,
    image: "Stoner"
    )

Monster.create(
    name: "Mystic Stag", 
    health: "30", 
    strength: "10", 
    agility: "5", 
    intellect: "5",
    map_id: Map.fifth.id,
    defeated: false,
    image: "MysticStag"
    )

Monster.create(
    name: "Mud Dragon", 
    health: "30", 
    strength: "10", 
    agility: "5", 
    intellect: "5",
    map_id: Map.fifth.id,
    defeated: false,
    image: "MudDragon"
    )

Monster.create(
    name: "BOSS: Furious Ent", 
    health: "40", 
    strength: "15", 
    agility: "1", 
    intellect: "12",
    map_id: Map.fifth.id,
    defeated: false,
    image: "FuriousEnt"
    )

Monster.create(
    name: "Scaled Dragon", 
    health: "40", 
    strength: "15", 
    agility: "5", 
    intellect: "8",
    map_id: Map.last.id,
    defeated: false,
    image: "ScaledDragon"
    )

Monster.create(
    name: "Shiny Boi", 
    health: "40", 
    strength: "10", 
    agility: "3", 
    intellect: "15",
    map_id: Map.last.id,
    defeated: false,
    image: "ShinyBoi"
    )

Monster.create(
    name: "BOSS: Diamond King", 
    health: "50", 
    strength: "12", 
    agility: "12", 
    intellect: "12",
    map_id: Map.last.id,
    defeated: false,
    image: "DiamondKing"
    )

puts "🌱 Seeding Rewards..."
100.times do
    Reward.create(item_name: Faker::Games::Dota.item, 
    health_boost: rand(0..15), 
    strength_boost: rand(0..3), 
    agility_boost: rand(0..3), 
    intellect_boost: rand(0..3), 
    hero_id: nil, 
    monster_id: Monster.all.ids.sample)
end 

puts "✅ Done seeding!"
