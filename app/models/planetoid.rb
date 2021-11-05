class Planetoid < ApplicationRecord
  attr_accessible :name, :mass, :diameter, :orbital_distance
  validates :name, :mass, :diameter, :orbital_distance, :presence = true
  validates :mass, :diameter, :orbital_distance, numericality: { only_integer: true,  }, :greater_than {10000}
end
