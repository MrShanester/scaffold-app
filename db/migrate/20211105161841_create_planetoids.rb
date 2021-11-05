class CreatePlanetoids < ActiveRecord::Migration[6.1]
  def change
    create_table :planetoids do |t|
      t.string :name
      t.integer :mass
      t.integer :diameter
      t.integer :orbital_distance

      t.timestamps
    end
  end
end
