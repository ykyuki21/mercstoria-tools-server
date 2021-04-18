# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

return if Rails.env.production?

Unit.create!(
  [
    {
      name: "シエット",
      full_name: "【白光宿す旋槍】シエット",
      rarity: 5,
      element: "light",
      weapon: "stub",
      life: 10252,
      attack: 6053,
      speed: 67,
      interval: 1.86,
      reach: 35,
      position: 1,
      toughness: 70,
      growth: 1,
      target: 3,
      time: 1,
    },
    {
      name: "テオ",
      full_name: "【灯の魔宝使い】テオ",
      rarity: 3,
      element: "fire",
      weapon: "magic",
      life: 3909,
      attack: 8454,
      speed: 51,
      interval: 2.54,
      reach: 140,
      position: 2,
      toughness: 36,
      growth: 3,
      target: 2,
      time: 2,
    }
  ]
)
