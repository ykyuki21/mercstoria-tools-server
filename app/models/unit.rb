class Unit < ApplicationRecord
  enum element: { fire: 1, water: 2, wind: 3, light: 4, dark: 5 }
  enum weapon: { slash: 1, stub: 2, strike: 3, bow: 4, magic: 5, gun: 6, heal: 7 }
end
