class CreateUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.string :name
      t.string :full_name
      t.integer :rarity
      t.integer :element
      t.integer :weapon

      t.timestamps
    end
  end
end
