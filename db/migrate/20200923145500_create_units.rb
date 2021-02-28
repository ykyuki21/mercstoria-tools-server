class CreateUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.string :name
      t.string :full_name
      t.integer :rarity
      t.integer :element
      t.integer :weapon
      t.integer :life
      t.integer :attack
      t.integer :speed
      t.float :interval
      t.integer :reach
      t.integer :position
      t.integer :toughness
      t.string :growth
      t.integer :target
      t.integer :time

      t.timestamps
    end
  end
end
